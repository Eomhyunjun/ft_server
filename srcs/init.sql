CREATE DATABASE wordpress;
CREATE USER 'heom'@'localhost' IDENTIFIED BY 'heom';
GRANT ALL PRIVILEGES ON wordpress.* TO 'heom'@'localhost' WITH GRANT OPTION;
"FLUSH PRIVILEGES;
