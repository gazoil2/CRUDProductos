class TipoPago:
    def __init__(self, tipo : str) -> None:
        self.__tipo = tipo
    
    @property
    def tipo(self):
        return self.__tipo