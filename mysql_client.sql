-- Login ke container2 dan jalankan script berikut di MySQL
CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;

-- Login ke container2 dan jalankan script berikut di MySQL
STOP SLAVE;

CHANGE MASTER TO
    MASTER_HOST='mysql_host',
    MASTER_USER='replica_user',
    MASTER_PASSWORD='123qwe',
    MASTER_LOG_FILE='mysql-bin.000001',
    MASTER_LOG_POS=  154;

START SLAVE;

-- Periksa status slave
SHOW SLAVE STATUS\G;
