from flask import Flask, render_template, request
from negocio.product import Product
from persistencia.productdao import ProductDAO
from persistencia.clientedao import ClienteDao
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
products_dao = ProductDAO(db_config)  # Assume you have a constructor
cliente_dao = ClienteDao(db_config)
product_manager = ProductManager(products_dao,cliente_dao)

@app.route('/')
def home():
    clientes = product_manager.list_clients()
    return render_template('index.html', clientes=clientes)

@app.route('/productos',methods=['GET','POST'])
def list_product():
    products = product_manager.list_products()
    if request.method == 'POST':
        client = request.form.get("cliente")
        products = product_manager.list_products_for_a_client(client)
    return render_template('productos.html', products = products)

@app.route('/confirmar_compra',methods=['POST'])
def comprar():
    if request.method == 'POST':
        products = []
        for key in request.form:
            if key.startswith('quantity_'):
                _,product_id,nomCli,desc = key.split('_')
                product = Product(product_id, nomCli, desc)  
                quantity = int(request.form[key])
                if quantity != 0:
                    products.append((product,quantity))
        for product in products:
            product_manager.set
        return render_template('confirmar_compra.html', products=products)
    return render_template('compra_fallo.html')

if __name__ == '__main__':
    app.run(debug=True)
