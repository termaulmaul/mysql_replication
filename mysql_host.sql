-- Login ke container1 dan jalankan script berikut di MySQL
CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;

-- Buat tabel sederhana untuk replikasi
CREATE TABLE IF NOT EXISTS example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Konfigurasi user untuk replikasi
CREATE USER 'replica_user'@'%' IDENTIFIED WITH 'mysql_native_password' BY '123qwe';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';

-- Periksa status binary log untuk memastikan server berjalan dengan benar
SHOW MASTER STATUS;
