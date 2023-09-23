homeworkdb=# create table barang (id serial primary key, kategoriBarang_id integer, nama_barang varchar, stock_barang integer, harga_barang integer);
CREATE TABLE

homeworkdb=# create table kategoriBarang (id serial primary key, nama_kategori integer, deskripsi varchar);
CREATE TABLE

homeworkdb=# insert into barang (id, kategoriBarang_id, nama_barang, stock_barang, harga_barang) values (1, 01, 'truck', 10, 100000),(2, 02, 'bus', 5, 75000), (3, 03, 'race', 7, 50000);
INSERT 0 3
homeworkdb=# select * from barang;
 id | kategoribarang_id | nama_barang | stock_barang | harga_barang
----+-------------------+-------------+--------------+--------------
  1 |                 1 | truck       |           10 |       100000
  2 |                 2 | bus         |            5 |        75000
  3 |                 3 | race        |            7 |        50000
(3 rows)

homeworkdb=# insert into kategoriBarang (nama_kategori, deskripsi) values (1, 'mobil', 'ini adalah mainan mobil mobilan untuk anak anak berumur 3tahun'),(2, 'motor', 'ini adalah mainan motor mmotoran untuk anak anak berumur 3tahun')
INSERT 0 2
homeworkdb=# select * from kategoriBarang;
 id | nama_kategori |                            deskripsi
----+---------------+-----------------------------------------------------------------
  1 | mobil         | ini adalah mainan mobil mobilan untuk anak anak berumur 3tahun
  2 | motor         | ini adalah mainan motor mmotoran untuk anak anak berumur 3tahun
(2 rows)


homeworkdb=# select * from kategoriBarang k JOIN barang b ON b.kategoribarang_id=k.id;
 id | nama_kategori |                            deskripsi                            | id | kategoribarang_id | nama_barang | stock_barang | harga_barang
----+---------------+-----------------------------------------------------------------+----+-------------------+-------------+--------------+--------------
  1 | mobil         | ini adalah mainan mobil mobilan untuk anak anak berumur 3tahun  |  1 |                 1 | truck       |           10 |       100000
  2 | motor         | ini adalah mainan motor mmotoran untuk anak anak berumur 3tahun |  2 |                 2 | bus         |            5 |        75000
(2 rows)


homeworkdb=#