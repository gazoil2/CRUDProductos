from negocio.product import Product
from persistencia.productdao import ProductDAO
class ProductManager:
    def __init__(self, products_dao : ProductDAO) -> None:
        self.__productsDAO = products_dao
        self.__products = []
        self.refresh_data()
    
    def refresh_data(self):
        self.__products = self.__productsDAO.get_products()

    def list_products(self):
        enumerated_products = []
        for product_index,product in enumerate(self.__products):
            enumerated_products.append((product_index,product))
        
        return enumerated_products
    
    def add_product(self, product : Product):
        self.__productsDAO.add_product(product)
        self.refresh_data()