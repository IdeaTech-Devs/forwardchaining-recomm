<?php
include('koneksi.php');
include('fungsi.php');

function uji_akurasi($skenario) {
    $benar = 0;
    $total = count($skenario);
    $hasilTes = [];

    foreach ($skenario as $test) {
        $kode = $test['kode'];
        $expected = $test['expected'];

        // Ambil nilai solusi dari database
        $sql = "SELECT isi_solusi FROM tb_solusi WHERE kode_solusi='$kode'";
        global $connect;
        $data = mysqli_query($connect, $sql);
        if (!$data) {
            die('Query Error: ' . mysqli_error($connect));
        }
        $row = mysqli_fetch_assoc($data);

        if ($row) {
            $output = $row['isi_solusi'];
        } else {
            $output = "Solusi tidak ditemukan.";
        }

        $hasilTes[] = [ 
            'kode' => $kode,
            'expected' => $expected,
            'output' => $output,
            'benar' => strpos($output, $expected) !== false
        ];

        if (strpos($output, $expected) !== false) {
            $benar++;
        }
    }

    $akurasi = ($benar / $total) * 100;
    return ['akurasi' => $akurasi, 'hasilTes' => $hasilTes];
}

$skenario = [
    ['kode' => 's1', 'expected' => 'D3 Elektronika'],
    ['kode' => 's2', 'expected' => 'D3/D4 Teknik Listrik'],
    ['kode' => 's3', 'expected' => 'D3 Telekomunikasi'],
    ['kode' => 's4', 'expected' => 'D4 Teknologi Rekayasa Jaringan Telekomunikasi'],
    ['kode' => 's5', 'expected' => 'D3 Teknik Konstruksi Sipil'],
    ['kode' => 's6', 'expected' => 'D3 Teknik Konstruksi Gedung'],
    ['kode' => 's7', 'expected' => 'D4 Jasa Konstruksi'],
    ['kode' => 's8', 'expected' => 'D4 Perancangan Bangunan Gedung'],
    ['kode' => 's9', 'expected' => 'D3 Teknik Konversi Energi'],
    ['kode' => 's10', 'expected' => 'D3 Perawatan Alat Berat'],
    ['kode' => 's11', 'expected' => 'D3 Teknik Mesin'],
    ['kode' => 's12', 'expected' => 'D3 Teknik Otomotif'],
    ['kode' => 's13', 'expected' => 'D4 Teknik Manufaktur'],
    ['kode' => 's14', 'expected' => 'D4 Teknik Mekatronika'],
    ['kode' => 's15', 'expected' => 'D4 Teknik Pembangkit Energi'],
    ['kode' => 's16', 'expected' => 'D4 Teknologi Rekayasa Energi Terbarukan'],
    ['kode' => 's17', 'expected' => 'D3 Analisis Kimia'],
    ['kode' => 's18', 'expected' => 'D4 Teknologi Kimia Industri'],
    ['kode' => 's19', 'expected' => 'D4 Teknologi Rekayasa Kimia Berkelanjutan'],
    ['kode' => 's20', 'expected' => 'D3 Akuntansi'],
    ['kode' => 's21', 'expected' => 'D4 Akuntansi Manajerial'],
    ['kode' => 's22', 'expected' => 'D3/D4 Administrasi Bisnis'],
    ['kode' => 's23', 'expected' => 'D4 Teknik Komputer dan Jaringan'],
    ['kode' => 's24', 'expected' => 'D4 Teknik Multimedia dan Jaringan'],
    // Tambahkan skenario uji lainnya jika diperlukan
];

$hasil = uji_akurasi($skenario);
$akurasi = $hasil['akurasi'];
$hasilTes = $hasil['hasilTes'];
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uji Akurasi</title>
    <style>
        body{font-family:Arial,sans-serif;margin:20px}.progress-bar{width:100%;background-color:#f3f3f3;border-radius:25px;overflow:hidden;margin:20px 0}.progress{height:30px;width:0;background-color:#4caf50;text-align:center;line-height:30px;color:white;border-radius:25px}table{width:100%;border-collapse:collapse;margin:20px 0}table,th,td{border:1px solid #ddd}th,td{padding:8px;text-align:left}th{background-color:#f2f2f2}.benar{background-color:#d4edda}.salah{background-color:#f8d7da}
    </style>
</head>
<body>
    <h1>Tingkat Akurasi</h1>
    <div class="progress-bar">
        <div class="progress" id="progress"></div>
    </div>
    <h2>Hasil Tes</h2>
    <table>
        <thead>
            <tr>
                <th>Kode</th>
                <th>Expected</th>
                <th>Output</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($hasilTes as $tes): ?>
                <tr class="<?php echo $tes['benar'] ? 'benar' : 'salah'; ?>">
                    <td><?php echo $tes['kode']; ?></td>
                    <td><?php echo $tes['expected']; ?></td>
                    <td><?php echo $tes['output']; ?></td>
                    <td><?php echo $tes['benar'] ? 'Benar' : 'Salah'; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <p>Untuk menguji akurasi, sistem akan membandingkan output yang dihasilkan dari database dengan nilai yang diharapkan (expected). Jika output mengandung nilai yang diharapkan, maka hasilnya dianggap benar. Tingkat akurasi dihitung sebagai persentase dari jumlah hasil yang benar dibagi dengan total skenario uji.</p>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var akurasi = <?php echo $akurasi; ?>;
            var progress = document.getElementById("progress");
            var width = 0;
            var interval = setInterval(function() {
                if (width >= akurasi) {
                    clearInterval(interval);
                } else {
                    width++;
                    progress.style.width = width + '%';
                    progress.innerHTML = width + '%';
                }
            }, 30); // Adjust the speed of the animation here
        });
    </script>
</body>
</html>