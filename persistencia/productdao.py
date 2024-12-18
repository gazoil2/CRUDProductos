
import mysql.connector
from negocio.product import Product

class ProductDAO:
    def __init__(self, db_config) -> None:
        self.__db_config = db_config
        self.__db = mysql.connector.connect(**db_config)
        self.__cursor = self.__db.cursor()
        

    def get_products(self):
        self.__cursor.execute("""
            SELECT IDProducto, RazSoc, Descripcion, PUnitario, IDEstado 
            FROM box_beni_piza_joaquin_v2.producto p 
            JOIN cliente c ON p.IDCliente = c.IDCliente;
        """)
        products = []
        for (id_producto, raz_soc, descripcion, precio, estado) in self.__cursor.fetchall():
            products.append(Product(id_producto, raz_soc, descripcion, precio, estado))  # Adjust according to your Product constructor
        return products

    def has_stock_of_a_product(self, producto: Product, quantity: int):
    # Create a new cursor for this method call
   
        db = mysql.connector.connect(**self.__db_config)
        cnx = db.cursor()
        with cnx as cursor:
        # Execute the stored procedure
            cursor.execute("""
                CALL box_beni_piza_joaquin_v2.Check_Stock_Producto_2(%s, %s);
            """, (producto.idProducto, quantity))

            # Fetch all results from the stored procedure
            result = cursor.fetchall()

            # Check the result and return stock status
            if result and result[0][1] == "S":
                return True
            else:
                return False
        db.close()

    def has_stock_of_products(self, products_with_quantities: list):
        """
        Check stock for a group of products.
        :param products_with_quantities: A list of tuples where each tuple is (Product, quantity).
        :return: A boolean indicating if all products are in stock.
        """
        db = mysql.connector.connect(**self.__db_config)
        cnx = db.cursor()

        # Step 1: Create a temporary table to hold stock information from articulo
        cnx.execute(""" 
            CREATE TEMPORARY TABLE temp_articulo (
                IDArticulo VARCHAR(45) PRIMARY KEY,
                Stock DECIMAL(12, 2)
            );
        """)

        cnx.execute(""" 
            INSERT INTO temp_articulo (IDArticulo, Stock)
            SELECT a.IDArticulo, a.Stock - COALESCE((select sum(cantidad) from reserva_materiales where IDArticulo = a.idarticulo),0) FROM box_beni_piza_joaquin_v2.articulo a;
        """)


        for product, quantity in products_with_quantities:
            product_id = product.idProducto
            cnx.execute("""
                UPDATE temp_articulo a
                SET a.Stock = a.Stock - (
                    SELECT SUM(r.Cantidad * %s)
                    FROM recetaMateriales r
                    WHERE r.IDProducto = %s AND r.IDArticulo = a.IDArticulo
                )
                WHERE a.IDArticulo IN (
                    SELECT r.IDArticulo
                    FROM recetaMateriales r
                    WHERE r.IDProducto = %s
                );
            """, (quantity, product_id, product_id))

        cnx.execute("""
            SELECT IDArticulo, Stock
            FROM temp_articulo
            WHERE Stock < 0;
        """)

        stock_status = cnx.fetchall()
        all_in_stock = len(stock_status) == 0 

        cnx.execute("DROP TEMPORARY TABLE IF EXISTS temp_articulo;")
        
        cnx.close()
        
        return all_in_stock

