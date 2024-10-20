class TipoPago:
    def __init__(self, tipo : str, id :int) -> None:
        self.__tipo = tipo
        self.__id = id
    
    @property
    def tipo(self):
        return self.__tipo

    @property
    def id(self):
        return self.__id