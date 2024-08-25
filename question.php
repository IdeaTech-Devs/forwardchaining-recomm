<?php
include ('koneksi.php');
session_start();

// Mulai dari pertanyaan pertama jika tidak ada kode yang diterima
$kode = isset($_GET['kode']) ? $_GET['kode'] : 'm1';

// Ambil pertanyaan dari database
$sql = "SELECT * from tb_pertanyaan WHERE kode_pertanyaan='$kode'";
$data = mysqli_query($connect, $sql);
$pertanyaan = mysqli_fetch_assoc($data);

?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="website sistem pakar">
    <meta name="author" content="mr k">
    <link rel="icon" href="image/icon.png">
    <title>Sistem Minat Program Pendidikan</title>
    <link rel="stylesheet" href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <?php include ('navbar.php'); ?>
    <main class="batas-atas">
        <div class="card text-white bg-info mb-3">
            <h5 class="card-header">Pertanyaan Diagnosis</h5>
            <div class="card-body text-center ukuran-30">
                <form method="post" action="input-ketampung.php" enctype="multipart/form-data" role="form">
                    <?php
                    echo "<p>Hai, " . $_SESSION['nama'] . " (" . $_SESSION['umur'] . " th)</p>";
                    ?>
                    <label for="exampleFormControlInput1"><?php echo $pertanyaan['isi_pertanyaan']; ?></label>
                    <br>
                    <div class="option">
                        <?php
                        include "fungsi.php";
                        answer($kode);                    
                        ?>
                    </div>
                </form>
            </div>
        </div>
    </main>
</body>
</html>
