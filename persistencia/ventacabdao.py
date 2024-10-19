import mysql.connector
from negocio.ventacab import VentaCAB

class VentaCABDAO:
    def __init__(self, db_config) -> None:
        self.__db_config = db_config

    def insertar_venta_cab(self,venta_cab : VentaCAB)
        db = mysql.connector.connect(**self.__db_config)
        cursor = db.cursor()