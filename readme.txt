Simple Library System - PHP Project

PROJECT STRUCTURE
-----------------
index.php              Main entry point with database connection and routing
config/config.php      Database configuration and PDO connection setup
config/functions.php   Utility functions (redirect helper)

DATABASE CONFIGURATION
----------------------
Host: localhost
Database: it30b_lab_db
User: root
Password: (empty)
Charset: utf8mb4

CONNECTION DETAILS
------------------
- Uses PDO with prepared statements for security
- Error mode: ERRMODE_EXCEPTION
- Default fetch mode: FETCH_ASSOC
- Emulated prepares: disabled

FEATURES
--------
1. Student Management
   - Display students table (ID, First Name, Last Name, Course, Created At)
   - Edit/Delete action links (placeholder)

2. Books Section (placeholder)
3. Borrow Section (placeholder)

NAVIGATION
----------
- Students: index.php?section=students
- Books: index.php?section=books
- Borrow: index.php?section=borrow

SESSION HANDLING
----------------
- Session started in index.php
- config.php also starts session and includes activity logger

UTILITY FUNCTIONS
-----------------
redirect($path) - Redirects to BASE_URL/$path

BASE URL
--------
http://localhost/it30b_navarro (defined in config.php)

DATABASE BACKUP COMMANDS
------------------------
mysqldump -u root -p --database it30b_lab_db > backups/it30b_lab_db.sql

mysqldump -u root -p --databases it30b_lab_db > backups/%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%_it30b_lab_db.sql

REQUIREMENTS
------------
- PHP with PDO MySQL extension
- MySQL/MariaDB server
- XAMPP or similar local server environment