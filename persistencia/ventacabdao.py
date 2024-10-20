import mysql.connector
from negocio.ventacab import VentaCAB

class VentaCABDAO:
    def __init__(self, db_config) -> None:
        self.__db_config = db_config

    def insertar_venta_cab(self, venta_cab: VentaCAB) -> int:
        db = mysql.connector.connect(**self.__db_config)
        cursor = db.cursor()

        # Call the stored procedure
        cursor.callproc('InsertarVentaCAB', (
            venta_cab.tipo_pago,
            venta_cab.tipo_envio,
            venta_cab.importe,
            venta_cab.nomCli
        ))

        # Fetch results from the procedure
        vidventacab = None
        for result in cursor.stored_results():
            vidventacab = result.fetchone()[0]  # Get the first row and first column

        db.commit()
        cursor.close()
        db.close()

        return vidventacab  # Return the id of the newly inserted record



    def insertar_venta_detalle(self, id_venta_cab, products_with_quantities):
        db = mysql.connector.connect(**self.__db_config)
        cursor = db.cursor()
        for product, quantity in products_with_quantities:

            unit_price = product.precio

            cursor.callproc('InsertarVentaDET', (
                    id_venta_cab,      
                    product.idProducto,
                    quantity,            
                    unit_price           
                ))

        db.commit()

        cursor.close()
        db.close()