<?php
$dbhost = 'localhost'; 
$dbuser = 'root';
$dbpass = '';
$dbname = 'sispaktest';

$connect = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname) or die('koneksi gagal');
