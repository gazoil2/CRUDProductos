
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


    def delete_product(self, product: Product):
        self.__cursor.execute("DELETE FROM products WHERE id = %s", (product.id,))  # Ensure 'id' exists in Product
        self.__db.commit()

    def close(self):
        self.__cursor.close()
        self.__db.close()
