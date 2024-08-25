<?php
session_start();

include "koneksi.php"; //ambil koneksi ke db

// Sanitasi input untuk mencegah XSS
$username = htmlspecialchars($_POST['username']);
$password = htmlspecialchars($_POST['password']);
$pass = md5($password); //enkripsi paswot

// Mencegah SQL Injection dengan prepared statement
$stmt = $connect->prepare("SELECT * FROM tb_admin WHERE username = ? AND password = ?");
$stmt->bind_param("ss", $username, $pass);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

if ($row['username'] == $username AND $row['password'] == $pass){
    session_start(); 
    $_SESSION['admin'] = $row['username']; //menyimpan session username
    header('location:pakar-home.php');
} else { //kalo levelnya bukan user ato admin maka masuk sini
    echo "<script>alert('Maaf, Pastikan Username dan Password anda benar!'); window.location=('loginpakar.php');</script>";
}

$stmt->close();
$connect->close();
?>