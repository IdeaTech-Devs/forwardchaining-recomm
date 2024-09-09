<?php
include "koneksi.php";

if (isset($_GET['kode'])) {
    $kode = $_GET['kode'];
    $sql = "DELETE FROM tb_pertanyaan WHERE kode_pertanyaan='$kode'";
    if (mysqli_query($connect, $sql)) {
        header("Location: pakar-pertanyaan.php");
    } else {
        echo "Error deleting record: " . mysqli_error($connect);
    }
}
