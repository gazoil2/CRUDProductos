from negocio.product import Product
from persistencia.productdao import ProductDAO
from persistencia.clientedao import ClienteDao
from persistencia.tipopagodao import TipoPagoDAO
class ProductManager:
    def __init__(self, products_dao : ProductDAO, client_dao : ClienteDao, tipo_dao : TipoPagoDAO) -> None:
        self.__productsDAO = products_dao
        self.__clientDAO = client_dao
        self.__tipo_pagoDAO = tipo_dao
        self.__cliente_actual = ""
        self.__products = []
        self.__clientes = []
        self.__tipo_pago = []
        self.__productos_a_comprar = []
        self.refresh_data()
    
    def refresh_data(self):
        self.__products = self.__productsDAO.get_products()
        self.__clientes = self.__clientDAO.get_clientes()
        self.__tipo_pago = self.__tipo_pagoDAO.get_tipos()

    def list_products(self):
        enumerated_products = []
        for product in self.__products:
            enumerated_products.append(product)

        return enumerated_products

    def list_products_for_a_client(self, client):
        products_client = []
        for product in self.__products:
            if product.nomCli == client:
                products_client.append(product)
        return products_client
    
    def list_clients(self):
        return self.__clientes

    def list_payment_type(self):
        return self.__tipo_pago
    
    def check_stock_product(self, products_quantity):
        return any(self.__productsDAO.has_stock_of_a_product(product_id, quantity) for product_id,quantity in products_quantity)

    def crear_orden_venta(self, products_quantity):
        print(products_quantity)
        return None
    
    def set_productos_a_comprar(self, productos):
        self.__productos_a_comprar = productos

    def get_productos_a_comprar(self):
        return self.__productos_a_comprar
    def print_a(self,key):
        print(key)
    
    def set_cliente(self, nombre_cliente):
        self.__cliente_actual = nombre_cliente
    
    def get_cliente_actual(self):
        return self.__cliente_actual