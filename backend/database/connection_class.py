'''

    This is used to create a connection class to access the connection method

'''

# from backend.database.accessing_db import connectToDB

from frontend.assets.variables.arrays import active_connections

import pyodbc

class Connection:
    def __init__(self):
        self.connect = None

    def connectToDB(self):
        '''
        This is used to connect to the database
        :return: connect
        '''

        try:
            if self.connect is not None:
                return self.connect

            connectionString = 'Driver={ODBC Driver 17 for SQL Server};Server=localhost;Database=Animeplex_2.0;Trusted_Connection=yes;'
            self.connect = pyodbc.connect(connectionString)

            if self.connect:
                print("Connected to the database.")

                active_connections.append(self.connect) # Keeps track of the active connections for later closing

                return self.connect

        except pyodbc.Error as e:
            print("Failed to connect to the database.")

# Create an instance of Connection class
make_connection = Connection()
db_connection = make_connection.connectToDB()