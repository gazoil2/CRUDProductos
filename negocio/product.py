
class Product:
    def __init__(self, idProd, nomCli, desc, precio, estado) -> None:
        self.__idProducto = idProd
        self.__nombreCliente = nomCli
        self.__descripcion = desc
        self.__estado = estado
        if precio == None:
            precio = 0
        self.__precio = precio

    @property
    def idProducto(self):
        return self.__idProducto
    
    @property
    def nomCli(self):
        return self.__nombreCliente
    
    @property
    def prodDesc(self):
        return self.__descripcion
    
    @property
    def precio(self):
        return self.__precio
    
    @property
    def estado(self):
        return self.__estado