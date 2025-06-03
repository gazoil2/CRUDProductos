class VentaCAB:
    def __init__(self,tipo_pago : str,tipo_envio : str,importe_total : float,razSoc_cliente : str) -> None:
        self.__tipo_pago = tipo_pago
        self.__tipo_envio = tipo_envio
        self.__importe_total = importe_total
        self.__raz_soc = razSoc_cliente
    
    @property
    def tipo_pago(self):
        return self.__tipo_pago
    
    @property
    def tipo_envio(self):
        return self.__tipo_envio
    
    @property
    def importe(self):
        return self.__importe_total
    
    @property
    def nomCli(self):
        return self.__raz_soc