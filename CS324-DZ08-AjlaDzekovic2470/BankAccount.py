class BankAccount:

    def __init__(self, balance):
        self.balance = balance

    def stanjeRacuna(self):
        print "Vase trenutno stanje na racunu je: %d" %  self.balance

    def deposit(self, deposit):
        novoStanje = self.balance + deposit
        print "Vas depozit iznosi: %d " % deposit
        print "Vase stanje na racunu je: %d " % novoStanje

    def withdraw(self, withdraw):
        preostalo = self.balance - withdraw
        print "Kolicina koju zelite da podignete iznosi: %d" % withdraw
        print "Vase stanje na racunu je: %d " % preostalo

