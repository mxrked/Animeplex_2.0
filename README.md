# Animeplex_2.0

* THIS GUIDE IS DEDICATED TO WINDOWS USERS *

A anime app that lets you browse anime and an anime store.                                                                                                                                                                                                                       
Created with PyQt5                                                                                                            
By Parker Phelps

----------------------
SETTING UP THE PROGRAM
----------------------

1. Make sure you have SQL server installed and its respected driver ({ODBC Driver 17 for SQL Server}) and also make sure that SQL is running. To check if SQL is running, do the following:
   - In the windows search bar, type "Services" and press enter.
   - Scroll to the bottom where you should see the following:
   ![Showing SQL Server is running](./frontend/assets/imgs/sqlrunning.png)
   

3. Download SSMS (SQL Microsoft Studio Management 19) - Download it to either the following locations:

   -   C:\Program Files\
   -   C:\Program Files (x86)\
   -   D:\
   
3. Connect to using the following:
   - Server Authentication: Windows Authentication
   - Login: localhost 
4. Create a new database called "Animeplex_2.0"
5. Now you must create the "Users" table. There are 2 ways you can do this.
   - Easy Way: 
      Create a new query and copy and paste the "DATABASE_CREATOR.sql" (backend/) contents into the query and execute it. Now the table for the program has been created.
   - Hard Way:
      Right click on Animeplex_2.0 > Tables > New > New Table. Now add the following columns to the table:
      - User_ID: int - (In the columns properties, make sure that Identity Specification is set to Yes, 1, 1)
      - User_Email - nvarchar(MAX) - ALLOW_NULLS
      - User_Password - nvarchar(MAX) - ALLOW_NULLS
      - User_Watched_Anime - nvarchar(MAX) - ALLOW_NULLS
      - User_Favorited_Anime - nvarchar(MAX) - ALLOW_NULLS                     
      - User_Cart - nvarchar(MAX) - ALLOW_NULLS
                                                                                             
      Now save the table as "Users"


6. Now download the whole project and run the program's "animeplex_2.0.exe" (output/animeplex_2.0/animplex_2.0.exe) file. You should be seeing green text at the bottom that says "All requirements were found!", if you do see it, the program is working. If you see one of the following errors here is why:
   - "Both SSMS and ODBC were not found! Refer to the README.md for installation." = This means that neither SSMS or ODBC Driver 17 were found. You must install both in the proper location for it to be picked up (Perferred to install in there default locations via wizard)
   - "ODBC was not found! Download ODBC Driver 17 for SQL Server." = This means that ODBC Driver 17 was not found. You must install it in the proper location for it to be picked up (Perferred to install in its default location via wizard)
   - "SSMS was not found!." = This means SSMS was not found. You must install it in the proper location for it to be picked up (Perferred to install in its default location via wizard)
   - "Only SSMS and Drivers were found, not database and table." = This means half of the requirements are found but the database and table needed for the program is not found. (Steps 3-5 will show you how to set that up)

![Image of the program running properly](./frontend/assets/imgs/all-requirements-found.png)                                                                    
                               

