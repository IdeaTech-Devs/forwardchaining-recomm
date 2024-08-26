## Metode
Web ini menggunakan metode **forward-chaining** untuk pengambilan keputusan. Forward-chaining adalah metode inferensi yang memulai dari fakta-fakta yang diketahui dan menerapkan aturan-aturan untuk mendapatkan kesimpulan baru. Dalam konteks web ini, forward-chaining digunakan untuk menentukan program studi yang sesuai berdasarkan jawaban pengguna terhadap serangkaian pertanyaan.

## Cara Kerja
1. **Input Identitas Pengguna**: Pengguna memasukkan nama dan umur mereka di halaman utama (`index.php`).
2. **Menjawab Pertanyaan**: Pengguna menjawab serangkaian pertanyaan yang diambil dari database (`tb_pertanyaan`). Pertanyaan ini ditampilkan di halaman `question.php`.
3. **Proses Forward-Chaining**: Berdasarkan jawaban pengguna, sistem akan menentukan solusi yang sesuai dengan menggunakan fungsi `answer` dan `solusi` yang terdapat di `fungsi.php`.
4. **Menampilkan Rekomendasi**: Rekomendasi program studi ditampilkan kepada pengguna di halaman `solusi.php`.
5. **Masukan Pengguna**: Admin dapat melihat dan mengelola masukan pengguna di halaman `pakar-masukan.php`.

## Implementasi di Web

### Input Identitas Pengguna
Pengguna memasukkan nama dan umur mereka di modal yang muncul di halaman utama:

```50:64:index.php
            <form action="simpan-session.php" method="post" enctype="multipart/form-data" role="form">
            <div class="modal-body">
                <div class="form-group">
...
                  <label for="recipient-name" class="col-form-label">Nama :</label>
                  <input type="text" name="nama" class="form-control" id="input-ame" placeholder="isikan nama anda" required autofocus >
                </div>
                <div class="form-group">
                  <label for="message-text" class="col-form-label">Umur :</label>
                  <input type="number" name="umur" class="form-control col-sm-8" placeholder="isikan umur anda" required >
                </div>
                </div>
                <div class="modal-footer">
                  <button type="submit" class="btn btn-info">Lanjut </button>
                </div>
              </form>
```


### Menjawab Pertanyaan
Pengguna menjawab pertanyaan yang ditampilkan di halaman `question.php`:

```1:12:question.php
<?php
include ('koneksi.php');
session_start();

// Mulai dari pertanyaan pertama jika tidak ada kode yang diterima
$kode = isset($_GET['kode']) ? $_GET['kode'] : 'm1';

// Ambil pertanyaan dari database
$sql = "SELECT * from tb_pertanyaan WHERE kode_pertanyaan='$kode'";
$data = mysqli_query($connect, $sql);
$pertanyaan = mysqli_fetch_assoc($data);

```


### Proses Forward-Chaining
Fungsi `answer` dan `solusi` di `fungsi.php` digunakan untuk menentukan solusi berdasarkan jawaban pengguna:

```3:7:fungsi.php
// function answer($kode){
//     if($kode=='m1'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m2'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m14'>Tidak</a>";
//     }
```


### Menampilkan Rekomendasi
Setelah menjawab semua pertanyaan, sistem akan menampilkan rekomendasi program studi di halaman `solusi.php`:

```1:12:solusi.php
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="website sistem pakar">
    <meta name="author" content="mr k">
    <link rel="icon" href="image/icon.png">
    <title>Sistem Pakar</title>
    <link rel="stylesheet" href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
</head>
```


### Mengelola Masukan Pengguna
Admin dapat melihat dan mengelola masukan pengguna di halaman `pakar-masukan.php`:

```1:12:pakar-masukan.php
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="image/icon.png">

    <title>Masukan Pengguna</title>

    <!-- Bootstrap core CSS -->
```


Dengan mengikuti alur kerja di atas, pengguna dapat memperoleh rekomendasi program studi yang sesuai dengan minat mereka, dan admin dapat mengelola masukan pengguna untuk meningkatkan sistem pakar ini.

Berikut adalah cara penginstalan web Sistem Pakar Pemilihan Prodi menggunakan XAMPP dan Laragon:

## Instalasi Menggunakan XAMPP

1. **Download dan Install XAMPP**:
   - Unduh XAMPP dari [situs resmi XAMPP](https://www.apachefriends.org/index.html).
   - Install XAMPP dan jalankan aplikasi tersebut.

2. **Ekstrak File Web**:
   - Ekstrak semua file web ke dalam folder `htdocs` yang ada di direktori instalasi XAMPP. Biasanya terletak di `C:\xampp\htdocs`.

3. **Nyalakan Service MySQL dan Apache**:
   - Buka XAMPP Control Panel.
   - Klik tombol "Start" untuk Apache dan MySQL.

4. **Import Database**:
   - Buka browser dan akses `http://localhost/phpmyadmin`.
   - Buat database baru dengan nama `sispaktest`.
   - Import file database `sispaktest.sql` ke dalam database `sispaktest`.

5. **Atur Koneksi Database**:
   - Buka file `koneksi.php` dan sesuaikan konfigurasi database dengan pengaturan lokal Anda.
   - Contoh konfigurasi:
     
```1:5:koneksi.php
<?php
$dbhost = 'localhost'; 
$dbuser = 'root';
$dbpass = '';
$dbname = 'sispaktest';
```


6. **Akses Halaman Web**:
   - Buka browser dan akses `http://localhost/nama_folder_web_anda`.

## Instalasi Menggunakan Laragon

1. **Download dan Install Laragon**:
   - Unduh Laragon dari [situs resmi Laragon](https://laragon.org/).
   - Install Laragon dan jalankan aplikasi tersebut.

2. **Ekstrak File Web**:
   - Ekstrak semua file web ke dalam folder `www` yang ada di direktori instalasi Laragon. Biasanya terletak di `C:\laragon\www`.

3. **Nyalakan Service MySQL dan Apache**:
   - Buka Laragon.
   - Klik tombol "Start All" untuk menjalankan semua service.

4. **Import Database**:
   - Buka browser dan akses `http://localhost/phpmyadmin`.
   - Buat database baru dengan nama `sispaktest`.
   - Import file database `sispaktest.sql` ke dalam database `sispaktest`.

5. **Atur Koneksi Database**:
   - Buka file `koneksi.php` dan sesuaikan konfigurasi database dengan pengaturan lokal Anda.
   - Contoh konfigurasi:
     
```1:5:koneksi.php
<?php
$dbhost = 'localhost'; 
$dbuser = 'root';
$dbpass = '';
$dbname = 'sispaktesttest';
```


6. **Akses Halaman Web**:
   - Buka browser dan akses `http://localhost/nama_folder_web_anda`.

Dengan mengikuti langkah-langkah di atas, Anda dapat menginstal dan menjalankan web Sistem Pakar Pemilihan Prodi menggunakan XAMPP atau Laragon.