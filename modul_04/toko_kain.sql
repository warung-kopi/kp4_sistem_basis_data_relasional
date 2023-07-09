CREATE DATABASE toko_kain;
USE toko_kain;

CREATE TABLE supplier (
  id_supplier INT PRIMARY KEY,
  nama_supplier VARCHAR(50),
  alamat_supplier VARCHAR(100)
);

CREATE TABLE produk (
  id_produk INT PRIMARY KEY,
  nama_produk VARCHAR(50),
  harga_produk DECIMAL(10, 2)
);

CREATE TABLE kategori_produk (
  id_kategori INT PRIMARY KEY,
  nama_kategori VARCHAR(50)
);

CREATE TABLE stok_produk (
  id_produk INT,
  stok_masuk INT,
  stok_keluar INT,
  FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);

CREATE TABLE penjualan (
  id_penjualan INT PRIMARY KEY,
  tanggal_penjualan DATE,
  id_produk INT,
  jumlah INT,
  total_harga DECIMAL(10, 2),
  FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);

CREATE TABLE pembelian (
  id_pembelian INT PRIMARY KEY,
  tanggal_pembelian DATE,
  id_supplier INT,
  id_produk INT,
  jumlah INT,
  total_harga DECIMAL(10, 2),
  FOREIGN KEY (id_supplier) REFERENCES supplier(id_supplier),
  FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);

CREATE TABLE pelanggan (
  id_pelanggan INT PRIMARY KEY,
  nama_pelanggan VARCHAR(50),
  alamat VARCHAR(100)
);

INSERT INTO supplier (id_supplier, nama_supplier, alamat_supplier)
VALUES (1, 'Supplier A', 'Jl. Supplier A No. 123'),
       (2, 'Supplier B', 'Jl. Supplier B No. 456'),
       (3, 'Supplier C', 'Jl. Supplier C No. 789'),
       (4, 'Supplier D', 'Jl. Supplier D No. 012'),
       (5, 'Supplier E', 'Jl. Supplier E No. 345'),
       (6, 'Supplier F', 'Jl. Supplier F No. 678'),
       (7, 'Supplier G', 'Jl. Supplier G No. 901'),
       (8, 'Supplier H', 'Jl. Supplier H No. 234'),
       (9, 'Supplier I', 'Jl. Supplier I No. 567'),
       (10, 'Supplier J', 'Jl. Supplier J No. 890');

INSERT INTO produk (id_produk, nama_produk, harga_produk)
VALUES (1, 'Kain Katun', 50.00),
       (2, 'Kain Sutra', 100.00),
       (3, 'Kain Denim', 75.00),
       (4, 'Kain Linen', 90.00),
       (5, 'Kain Wol', 120.00),
       (6, 'Kain Satin', 80.00),
       (7, 'Kain Flanel', 60.00),
       (8, 'Kain Batik', 70.00),
       (9, 'Kain Tenun', 110.00),
       (10, 'Kain Rayon', 65.00);

INSERT INTO kategori_produk (id_kategori, nama_kategori)
VALUES (1, 'Kategori 1'),
       (2, 'Kategori 2'),
       (3, 'Kategori 3'),
       (4, 'Kategori 4'),
       (5, 'Kategori 5'),
       (6, 'Kategori 6'),
       (7, 'Kategori 7'),
       (8, 'Kategori 8'),
       (9, 'Kategori 9'),
       (10, 'Kategori 10');

INSERT INTO stok_produk (id_produk, stok_masuk, stok_keluar)
VALUES (1, 100, 50),
       (2, 200, 100),
       (3, 150, 80),
       (4, 120, 70),
       (5, 180, 90),
       (6, 140, 60),
       (7, 110, 40),
       (8, 130, 55),
       (9, 160, 75),
       (10, 90, 30);

INSERT INTO penjualan (id_penjualan, tanggal_penjualan, id_produk, jumlah, total_harga)
VALUES (1, '2023-06-01', 1, 10, 500.00),
       (2, '2023-06-02', 2, 5, 500.00),
       (3, '2023-06-03', 3, 8, 600.00),
       (4, '2023-06-04', 4, 7, 630.00),
       (5, '2023-06-05', 5, 12, 1440.00),
       (6, '2023-06-06', 6, 6, 480.00),
       (7, '2023-06-07', 7, 9, 540.00),
       (8, '2023-06-08', 8, 4, 280.00),
       (9, '2023-06-09', 9, 11, 1210.00),
       (10, '2023-06-10', 10, 3, 195.00);

INSERT INTO pembelian (id_pembelian, tanggal_pembelian, id_supplier, id_produk, jumlah, total_harga)
VALUES (1, '2023-06-01', 1, 1, 20, 1000.00),
       (2, '2023-06-02', 2, 2, 10, 1000.00),
       (3, '2023-06-03', 3, 3, 15, 1125.00),
       (4, '2023-06-04', 4, 4, 8, 720.00),
       (5, '2023-06-05', 5, 5, 25, 3000.00),
       (6, '2023-06-06', 6, 6, 12, 960.00),
       (7, '2023-06-07', 7, 7, 18, 1080.00),
       (8, '2023-06-08', 8, 8, 6, 420.00),
       (9, '2023-06-09', 9, 9, 22, 2420.00),
       (10, '2023-06-10', 10, 10, 5, 325.00);

INSERT INTO pelanggan (id_pelanggan, nama_pelanggan, alamat)
VALUES (1, 'Pelanggan A', 'Jl. Pelanggan A No. 123'),
       (2, 'Pelanggan B', 'Jl. Pelanggan B No. 456'),
       (3, 'Pelanggan C', 'Jl. Pelanggan C No. 789'),
       (4, 'Pelanggan D', 'Jl. Pelanggan D No. 012'),
       (5, 'Pelanggan E', 'Jl. Pelanggan E No. 345'),
       (6, 'Pelanggan F', 'Jl. Pelanggan F No. 678'),
       (7, 'Pelanggan G', 'Jl. Pelanggan G No. 901'),
       (8, 'Pelanggan H', 'Jl. Pelanggan H No. 234'),
       (9, 'Pelanggan I', 'Jl. Pelanggan I No. 567'),
       (10, 'Pelanggan J', 'Jl. Pelanggan J No. 890');
