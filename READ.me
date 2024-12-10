# MySQL Master-Slave Replication dengan Docker

Repositori ini berisi konfigurasi untuk menyiapkan replikasi MySQL Master-Slave menggunakan Docker Compose.

## Struktur Proyek

- `docker-compose.yml` - File konfigurasi Docker Compose
- `mysql_host.sql` - Query untuk konfigurasi master (container1)  
- `mysql_client.sql` - Query untuk konfigurasi slave (container2)
- `.gitignore` - Mengabaikan direktori data

## Konfigurasi Docker Compose

File `docker-compose.yml` mendefinisikan 2 container MySQL:

### Container1 (Master)
- Image: MySQL 8.0
- Container name: mysql_host 
- Port: 3306
- Konfigurasi:
  - server-id=1
  - log-bin untuk binary logging
  - binlog-do-db untuk database yang direplikasi
  - Menggunakan native password authentication

### Container2 (Slave) 
- Image: MySQL 8.0
- Container name: mysql_client
- Port: 3307
- Konfigurasi:
  - server-id=2
  - relay-log untuk replikasi
  - read-only mode
  - Menggunakan native password authentication

Kedua container terhubung dalam network bridge `mysql_net`.

## Langkah Setup Replikasi

### 1. Setup Master (mysql_host)
- Buat database testdb
- Buat tabel example untuk testing
- Buat user replikasi dan berikan akses
- Cek status binary log

### 2. Setup Slave (mysql_client) 
- Buat database testdb
- Konfigurasi koneksi ke master
- Start replikasi
- Cek status slave

### 3. Testing Replikasi
- Di master: Buat tabel example_data dan insert data
- Di slave: Verifikasi data telah tereplikasi dengan SELECT

## Cara Menjalankan

1. Clone repositori
2. Jalankan `docker-compose up -d`
3. Eksekusi query di mysql_host.sql pada container master
4. Eksekusi query di mysql_client.sql pada container slave
5. Test replikasi dengan menambah data di master dan verifikasi di slave

## Catatan
- Password root: 123qwe
- User replikasi: replica_user/123qwe
- Data MySQL disimpan di ./data/container1 dan ./data/container2
