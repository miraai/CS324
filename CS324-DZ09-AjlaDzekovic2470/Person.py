import mysql.connector
from mysql.connector import errorcode


class Person:
    def __init__(self, user, pw, host, db):
        try:
            self.cnx = mysql.connector.connect(
                user=user,
                password=pw,
                host=host,
                database=db
            )

            self.cursor = self.cnx.cursor()

        except mysql.connector.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                print "Greska username-a ili password-a."
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                print "Greska baze."
            else:
                print "Greska hostname-a"
        else:
            print "Konekcija je uspostavljena."

    def persistPersons(self, name, lastName, age):
        try:
            self.cursor.execute(
                '''
                INSERT INTO
                persons
                VALUES
                (%s, %s, %s, %s)
                ''',
                (None, name, lastName, age)
            )
            self.cnx.commit()
        except:
            print "Niste uneli osobu."
            self.cnx.rollback()
        else:
            print "Uspesno ste uneli osobu!"

    def fetchPersons(self):
        try:
            self.cursor.execute(
                '''
                SELECT
                *
                FROM
                persons
                '''
            )
        except:
            print "Greska!"
        else:
            print "Sve unete osobe:"
            return self.cursor.fetchall()
