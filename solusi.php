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
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&display=swap" rel="stylesheet">
</head>

<body>
    <?php include('navbar.php'); ?>
    <main class="batas-atas">
        <div class="card text-white  bg-info mb-3">
            <h5 class="card-header">Solusi</h5>
            <div class="card-body text-left ukuran-20">
                <form method="post" action="solusi.php" enctype="multipart/form-data" role="form">
                    <?php
                    include('koneksi.php');
                    session_start();
                    echo "<p>Nama : " . $_SESSION['nama'] . "</p>";
                    echo "<p>Umur : " . $_SESSION['umur'] . "</p>";
                    if (isset($_GET['kode'])) {
                        $kode = $_GET['kode'];
                    }
                    ?>
                    <hr>
                    <p>saya merasa :</p>
                    <?php
                    include "fungsi.php";
                    solusi($kode);
                    ?>
                    <hr>
                    <?php
                    $sql = "SELECT * from tb_solusi WHERE kode_solusi='$kode'";
                    $data = mysqli_query($connect, $sql);
                    $row = mysqli_fetch_assoc($data);

                    if ($row) {
                        if ($row['kode_solusi'] == "x-1" || $row['isi_solusi'] == "x-2" || $row['isi_solusi'] == "x-3" || $row['isi_solusi'] == "x-4" || $row['isi_solusi'] == "x-5") {
                            echo "<center><p><strong style='color:red'>SISTEM TIDAK MENEMUKAN JAWABAN !</strong></p></center><hr>";
                    ?>
                            <div class="card bg-dark">
                                <h5 class="card-header">Pengguna menambah fakta baru</h5>
                                <div class="card-body">
                                    <form action="solusi.php" method="post">
                                        <div class="form-group">
                                            <label for="exampleFormControlSelect1">Pilih Jurusan :</label>
                                            <select name="solusi" class="form-control" id="exampleFormControlSelect2">
                                                <?php
                                                include "koneksi.php";
                                                $sql = "SELECT * from tb_solusi";
                                                $data = mysqli_query($connect, $sql);
                                                while ($row = mysqli_fetch_assoc($data)) {
                                                    if ($row['isi_solusi'] != "x-1" && $row['isi_solusi'] != "x-2" && $row['isi_solusi'] != "x-3" && $row['isi_solusi'] != "x-4" && $row['isi_solusi'] != "x-5") {
                                                        echo '<option value="' . $row["isi_solusi"] . '">' . $row["isi_solusi"] . '</option>';
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlInput2">Masukan fakta:</label>
                                            <input type="text" name="fakta" class="form-control" id="exampleFormControlInput1" placeholder="contoh : Suka memperbaiki komputer">
                                        </div>
                                        <input type="submit" class="btn btn-info" name="masukan">
                                    </form>
                                </div>
                            </div>
                    <?php
                        } else {
                            echo "<p>Prodi yang di rekomendasikan untuk saya adalah : <strong style='color:green'>" . $row['isi_solusi'] . "</strong></p>";
                        }
                    } else {
                        echo "<center><p><strong style='color:red'>SISTEM TIDAK MENEMUKAN REKOMENDASI !</strong></p></center><hr>";
                    }
                    ?>
                </form>
                <br>
                <div class="text-center">
                    <a href="index.php" class="btn btn-primary">Kembali ke Beranda</a>
                </div>
            </div>
        </div>
    </main>
</body>
z
</html>