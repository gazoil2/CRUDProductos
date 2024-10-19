import mysql
from negocio.cliente import Cliente
class ClienteDao:
    def __init__(self, db_config) -> None:
        self.__db = mysql.connector.connect(**db_config)
        self.__cursor = self.__db.cursor()

    def get_clientes(self):
        self.__cursor.execute("""
            SELECT IDCliente,RazSoc FROM box_beni_piza_joaquin_v2.cliente;
        """)
        products = []
        for (id_cli, raz_soc) in self.__cursor.fetchall():
            products.append(Cliente(id_cli, raz_soc))  
        return products

