from negocio.product import Product
from persistencia.productdao import ProductDAO
from persistencia.clientedao import ClienteDao
class ProductManager:
    def __init__(self, products_dao : ProductDAO, client_dao : ClienteDao) -> None:
        self.__productsDAO = products_dao
        self.__clientDAO = client_dao
        self.__products = []
        self.__clientes = []
        self.refresh_data()
    
    def refresh_data(self):
        self.__products = self.__productsDAO.get_products()
        self.__clientes = self.__clientDAO.get_clientes()

    def list_products(self):
        enumerated_products = []
        for product_index,product in enumerate(self.__products):
            enumerated_products.append((product_index,product))

        return enumerated_products

    def list_products_for_a_client(self, client):
        products_client = []
        for product_index,product in enumerate(self.__products):
            if product.nomCli == client:
                products_client.append((product_index,product))
        return products_client
    
    def list_clients(self):
        return self.__clientes
    
    def check_stock_product(self, products_quantity):
        return any(self.__productsDAO.has_stock_of_a_product(product_id, quantity) for product_id,quantity in products_quantity)

    def crear_orden_venta(self, products_quantity):
        print(products_quantity)
        return None
    
    def set_price_to_list_of_products(self, products):
        for product in products:
            self.__productsDAO.add_price_to_object(product)
    def print_a(self,key):
        print(key)