SELECT * FROM petugas;
SELECT nm_dokter,spesialis FROM dokter;
SELECT * FROM penyakit WHERE kd_penyakit = 'P-0013';
SELECT * FROM penyakit WHERE nm_penyakit LIKE 'INFEKSI%';
SELECT * FROM obat WHERE nm_obat LIKE '%SYR';
SELECT * FROM obat WHERE nm_obat LIKE '%AMOXIL%';
SELECT * FROM obat WHERE satuan = 'TUBE';
SELECT * FROM obat WHERE harga > 5000 ORDER BY harga;
SELECT * FROM obat WHERE jml_stok < 20 ORDER BY jml_stok DESC;
SELECT * FROM obat WHERE satuan = 'BOTOL' AND harga >= 10000 ORDER BY kd_obat DESC;
SELECT nm_pasien,tgl_lahir,CONCAT(YEAR(CURDATE())-YEAR(tgl_lahir),'Tahun')AS usia FROM pasien;
SELECT DISTINCT(satuan) FROM obat;
SELECT satuan,COUNT(*)AS jml_data FROM obat GROUP BY satuan;
SELECT satuan,COUNT(*) AS jml_data FROM obat GROUP BY satuan HAVING jml_data > 3;
SELECT SUM(jml_stok)AS total_stok FROM obat;
SELECT MIN(harga) AS termurah,MAX(harga) AS termahal FROM obat;

SELECT pasien.nm_pasien,rek_medik.tgl_periksa,
rek_medik.diagnosa,dokter.nm_dokter
FROM pasien,rek_medik,dokter
WHERE pasien.kd_pasien = rek_medik.kd_pasien
AND rek_medik.kd_dokter = dokter.kd_dokter
ORDER BY pasien.nm_pasien,rek_medik.tgl_periksa;

SELECT pasien.kd_pasien,pasien.nm_pasien,rek_medik.tgl_periksa,
rek_medik.diagnosa,detail_rek_medik.kd_penyakit,penyakit.nm_penyakit
FROM pasien,rek_medik,detail_rek_medik,penyakit
WHERE pasien.kd_pasien = rek_medik.kd_pasien
AND rek_medik.no_rmdk = detail_rek_medik.no_rmdk
AND detail_rek_medik.kd_penyakit = penyakit.kd_penyakit
ORDER BY pasien.kd_pasien,rek_medik.tgl_periksa,
detail_rek_medik.kd_penyakit;

SELECT a.kd_pasien,a.nm_pasien,b.tgl_periksa,b.diagnosa,
c.kd_penyakit,d.nm_penyakit
FROM pasien AS a,rek_medik AS b,detail_rek_medik AS c,penyakit AS d
WHERE a.kd_pasien = b.kd_pasien
AND b.no_rmdk = c.no_rmdk
AND c.kd_penyakit = d.kd_penyakit
ORDER BY a.kd_pasien,b.tgl_periksa,c.kd_penyakit;

SELECT a.nm_pasien,b.tgl_beli,b.grand_total AS total_pembelian,
c.nm_petugas
FROM pasien AS a,pembelian AS b,petugas AS c
WHERE a.kd_pasien = b.kd_pasien AND b.kd_petugas = c.kd_petugas
AND b.tgl_beli IN('2014-10-01','2014-10-02');

SELECT a.kd_dokter,a.nm_dokter,a.spesialis
FROM dokter AS a LEFT JOIN rek_medik AS b
ON a.kd_dokter = b.kd_dokter
WHERE b.kd_dokter IS NULL;

SELECT b.* FROM detail_pembelian AS a RIGHT JOIN obat AS b
ON a.kd_obat = b.kd_obat
WHERE a.kd_obat IS NULL;

UPDATE dokter SET spesialis = 'BEDAH PLASTIK'
WHERE kd_dokter = 'D-20140804';
SELECT * FROM dokter;

UPDATE obat SET harga = harga +(0.35*harga) WHERE satuan = 'BOTOL';
SELECT * FROM obat;

DELETE FROM pasien WHERE alm_pasien LIKE '%poncol%';
SELECT * FROM pasien;







