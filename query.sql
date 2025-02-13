SELECT * FROM bukus WHERE judul = "GEOMETRI ANALITIK";


SELECT id,judul
 FROM   bukus WHERE judul = "Contoh Buku";
 
 -- Cari semua BUKU yang ID = 19,20
 SELECT * FROM bukus
     WHERE id = 19 OR id= 20;
 
 
 -- Cari semua BUKU yang tahun_penerbitan 2022
 -- dan urutkan menaik (ASCENDING => ASC) atau menurun (DESCENDING => DESC)
     
     
SELECT * FROM bukus 
         WHERE tahun_penerbitan = 2022 AND lppm_id = 16 
         ORDER BY id ASC;

INSERT INTO sekolah (nama_sekolah, kota) VALUES ('sd muhammadyah','Bogor');         
INSERT INTO sekolah (nama_sekolah, kota) VALUES ('sd sukarno','Klaten');         
      
INSERT INTO sekolah (nama_sekolah, kota) VALUES ('sd megawati','Depok');    

DELETE FROM sekolah WHERE id = 8;


-- Tampilkanah SISWA yang bersekolah di SD Tunas
SELECT nama_siswa, siswa.kota AS 'kota lahir', nama_sekolah, sekolah.kota 
    FROM siswa 
    INNER JOIN sekolah ON siswa.`id_sekolah` = sekolah.`id`    
    WHERE id_sekolah = 1;


-- Tampilkanah SISWA yang bersekolah di kota Bogor
SELECT nama_siswa, siswa.kota AS 'kota lahir', nama_sekolah, sekolah.kota 
    FROM siswa 
    INNER JOIN sekolah ON siswa.`id_sekolah` = sekolah.`id`    
    WHERE sekolah.`kota` = 'Bogor';
    
    
SELECT nama_siswa, siswa.kota AS 'kota lahir', nama_sekolah, sekolah.kota 
    FROM siswa 
    LEFT JOIN sekolah ON siswa.`id_sekolah` = sekolah.`id`    
    WHERE sekolah.`kota` = 'Bogor';
    
SELECT nama_siswa, siswa.kota AS 'kota lahir', nama_sekolah, sekolah.kota 
    FROM siswa 
    RIGHT JOIN sekolah ON siswa.`id_sekolah` = sekolah.`id`    
    WHERE sekolah.`kota` = 'Bogor';
    
-- Hapus semua siswa yang sekolahnya berasal dari Bogor
DELETE siswa FROM siswa 
    INNER JOIN sekolah ON siswa.`id_sekolah` = sekolah.`id`    
    WHERE sekolah.`kota` = 'Bogor';
    
          