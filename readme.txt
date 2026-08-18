1. CREATE DATABASE <database_name>;
2. SHOW DATABASES;
3. CONNECT <database_name>;
4. CREATE TABLE <table_name_in_plural>();
5. INSERT INTO <table_name_in_plural>
        (columns) VALUES
        (values);



        # Utility commands
        \! cls 
        mysqldump -u root -p --database library_db > C:\xampp\htdocs\devs\it30b\backups\library_db.sql