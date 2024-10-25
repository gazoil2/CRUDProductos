from flask import Flask, render_template, request, redirect, flash
from datetime import datetime
from negocio.product import Product
from persistencia.productdao import ProductDAO
from persistencia.clientedao import ClienteDao
from persistencia.tipopagodao import TipoPagoDAO, TipoPago
from persistencia.ventacabdao import VentaCABDAO, VentaCAB
from negocio.productmanager import ProductManager  # Adjust the import based on your structure
app = Flask(__name__)

db_config = {
    'user': 'root',
    'password': 'i2i0L2aH1',
    'host': 'localhost',  # or the IP address of your database server
    'port': '3306',
    'database': 'box_beni_piza_joaquin_v2',  # the name of your database
}
# Initialize your ProductDAO and ProductManager here
products_dao = ProductDAO(db_config)  
cliente_dao = ClienteDao(db_config)
tipo_dao = TipoPagoDAO(db_config)
ventacab_dao = VentaCABDAO(db_config)
product_manager = ProductManager(products_dao,cliente_dao,tipo_dao)


@app.route('/',methods=['GET','POST'])
def home():
    clientes = product_manager.list_clients()
    if request.method == 'POST':
        client = request.form.get("cliente")
        product_manager.set_cliente(client)
        if not client:
            message = f"Tienes que seleccionar un cliente"
            return render_template('index.html', clientes=clientes, message=message)
        return redirect("/productos")
    return render_template('index.html', clientes=clientes)

@app.route('/productos',methods=['GET','POST'])
def list_product():
    if request.method == 'GET':
        cliente = product_manager.get_cliente_actual()
        products = product_manager.list_products_for_a_client(cliente)
        return render_template('productos.html', products = products)
    elif request.method == 'POST':
        precio_total = 0
        products = []
        for key in request.form:
            if key.startswith('quantity_'):
                _,product_id,nomCli,desc,precio = key.split('_')
                cliente = nomCli
                product = Product(product_id, nomCli, desc, float(precio),1)  
                quantity = int(request.form[key])
                if quantity != 0 :
                    has_stock = products_dao.has_stock_of_a_product(product,quantity)
                    if not has_stock:
                        productos = product_manager.list_products_for_a_client(product.nomCli)
                        message = f"No hay stock para {quantity} del producto {product.idProducto}"
                        return render_template('productos.html', products = productos, message = message)
                    precio_total += float(precio)
                    products.append((product,quantity))
        has_stock_of_all_products = products_dao.has_stock_of_products(products)
        if not has_stock_of_all_products:
            productos = product_manager.list_products_for_a_client(cliente)
            message = f"No hay stock para los productos combinados"
            return render_template('productos.html', products = productos, message = message)
        if not products:
            nomCli = product_manager.get_cliente_actual()
            productos = product_manager.list_products_for_a_client(nomCli)
            message = f"Seleccione algun producto"
            return render_template('productos.html', products = productos, message = message)
        product_manager.set_productos_a_comprar(products)
        product_manager.set_precio_total(precio_total)
        return redirect('/confirmar_compra')
    

@app.route('/confirmar_compra',methods=['POST', 'GET'])
def comprar():
    if request.method == 'GET':
        products = product_manager.get_productos_a_comprar()
        payment_types = product_manager.list_payment_type()

        precio_total = product_manager.get_precio_total()
        product_manager.set_productos_a_comprar(products)
        return render_template('confirmar_compra.html', products=products, precio_total = precio_total, payment_types=payment_types)
    elif request.method == 'POST':
        productos = product_manager.get_productos_a_comprar()
        #PRODUCTOS ES UNA TUPLA DE (PRODUCTO , CANTIDAD)
        tipo_pago = request.form.get("paymentType")
        tipo_envio = request.form.get("shippingType")
        importe_total = sum(producto[0].precio * producto[1] for producto in productos)
        ventacab = VentaCAB(tipo_pago,tipo_envio,importe_total,productos[0][0].nomCli)
        idventacab = ventacab_dao.insertar_venta_cab(ventacab)
        product_manager.set_id_venta_cab(idventacab)
        product_manager.set_venta_cab(ventacab)
        ventacab_dao.insertar_venta_detalle(idventacab, productos)
        return redirect("/mostrar_compra")


@app.route('/mostrar_compra',methods=['GET', 'POST'])
def mostrar_venta_cab():
    ventacab = product_manager.get_venta_cab()
    productos = product_manager.get_productos_a_comprar()
    idventacab= product_manager.get_id_venta_cab()
    importe_total=ventacab.importe
    tipo_envio = ventacab.tipo_envio
    tipo_pago = ventacab.tipo_pago
    return render_template('compra_success.html', 
                           order_id=idventacab, 
                           products=productos, 
                           precio_total=importe_total,
                           tipo_pago = tipo_pago,
                           tipo_envio = tipo_envio)
if __name__ == '__main__':
    app.run(debug=True)
