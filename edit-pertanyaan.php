<?php
include "koneksi.php";

if (isset($_POST['kode_pertanyaan']) && isset($_POST['isi_pertanyaan']) && isset($_POST['jurusan'])) {
    $kode = $_POST['kode_pertanyaan'];
    $isi = $_POST['isi_pertanyaan'];
    $jurusan = $_POST['jurusan'];

    $sql = "UPDATE tb_pertanyaan SET isi_pertanyaan='$isi' WHERE kode_pertanyaan='$kode'";
    if (mysqli_query($connect, $sql)) {
        // Update jurusan di tb_kesimpulan
        $sql_kesimpulan = "UPDATE tb_kesimpulan SET solusi='$jurusan' WHERE fakta='$isi'";
        mysqli_query($connect, $sql_kesimpulan);

        header("Location: pakar-pertanyaan.php");
    } else {
        echo "Error updating record: " . mysqli_error($connect);
    }
}
