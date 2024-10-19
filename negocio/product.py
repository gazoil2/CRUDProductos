
class Product:
    def __init__(self, idProd, nomCli, desc, precio) -> None:
        self.__idProducto = idProd
        self.__nombreCliente = nomCli
        self.__descripcion = desc
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
    
    @precio.setter
    def precio(self, value):
        self.__precio = value