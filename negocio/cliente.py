
class Cliente:
    def __init__(self, id_db, raz_soc) -> None:
        self.__id_db = id_db
        self.__raz_soc = raz_soc

    @property
    def idCli(self):
        return self.__id_db
    
    @property
    def razSoc(self):
        return self.__raz_soc