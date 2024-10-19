
import mysql.connector
from negocio.product import Product

class ProductDAO:
    def __init__(self, db_config) -> None:
        self.__db = mysql.connector.connect(**db_config)
        self.__cursor = self.__db.cursor()

    def get_products(self):
        self.__cursor.execute("""
            SELECT IDProducto, RazSoc, Descripcion 
            FROM box_beni_piza_joaquin_v2.producto p 
            JOIN cliente c ON p.IDCliente = c.IDCliente;
        """)
        products = []
        for (id_producto, raz_soc, descripcion) in self.__cursor.fetchall():
            products.append(Product(id_producto, raz_soc, descripcion))  # Adjust according to your Product constructor
        return products

    def has_stock_of_a_product(self, producto : Product, quantity : int):
        self.__cursor.execute("""
            CALL box_beni_piza_joaquin_v2.Check_Stock_Producto_2(%s, %s);
        """, (producto.idProducto, quantity))

        return True if (result := self.__cursor.fetchone()) and result[1] == 'S' else False

    def add_price_to_object(self, producto: Product):
        self.__cursor.execute("""
            SELECT PUnitario 
            FROM box_beni_piza_joaquin_v2.producto p 
            JOIN box_beni_piza_joaquin_v2.cliente c ON p.cliente_id = c.id
            WHERE p.idProducto = %s
        """, (producto.idProducto,))

        result = self.__cursor.fetchone()  # Fetch the first result
        if result:
            precio = result[0]  # Get the price from the result
            producto.precio = precio