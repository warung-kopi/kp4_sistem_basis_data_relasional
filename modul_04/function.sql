-- #####################################################
-- TRIGGER AFTER DELETE:
-- Membuat tabel log untuk menyimpan entri log
CREATE TABLE log (
  id INT AUTO_INCREMENT PRIMARY KEY,
  event VARCHAR(100)
);

-- Membuat TRIGGER AFTER DELETE
DELIMITER //
CREATE TRIGGER produk_after_delete
AFTER DELETE ON produk
FOR EACH ROW
BEGIN
    INSERT INTO log (event) VALUES (CONCAT('Produk dihapus: ', OLD.nama_produk));
END //
DELIMITER ;


-- #####################################################
-- Memanggil TRIGGER AFTER DELETE:
-- Menghapus sebuah produk dari tabel produk
DELETE FROM produk WHERE id_produk = 1;




-- #####################################################
-- membuat TRIGGER BEFORE UPDATE:
DELIMITER //
CREATE TRIGGER produk_before_update
BEFORE UPDATE ON produk
FOR EACH ROW
BEGIN
    IF NEW.harga_produk = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga produk tidak dapat diubah menjadi 0.';
    END IF;
END //
DELIMITER ;


-- #####################################################
-- Memanggil TRIGGER AFTER DELETE:
-- Mengubah harga_produk menjadi 0 untuk produk dengan ID 2
UPDATE produk SET harga_produk = 0 WHERE id_produk = 2;
