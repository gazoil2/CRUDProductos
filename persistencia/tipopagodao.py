from typing import Any
import mysql.connector
from negocio.tipo_pago import TipoPago
class TipoPagoDAO:
    def __init__(self, db_config) -> None:
        self.__db = mysql.connector.connect(**db_config)
        self.__cursor = self.__db.cursor()

    def get_tipos(self):
        self.__cursor.execute("""
            SELECT descripcion FROM box_beni_piza_joaquin_v2.formapago;
        """)
        tipos = []
        for (desc) in self.__cursor.fetchall():
            tipos.append(TipoPago(desc[0]))  

        return tipos
    

