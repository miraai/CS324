from Person import *

name = "root"
pwd = ""
host = "localhost"
db = "Baza"

vrati = Person(name, pwd, host, db)
vrati.persistPersons("Ajla", "Dzekovic", "22")
print vrati.fetchPersons()