<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="image/icon.png">

    <title>Lihat Pertanyaan</title>

    <!-- Bootstrap core CSS -->
    <link href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
</head>

<body>

    <nav class="navbar navbar-dark fixed-top bg-info flex-md-nowrap p-0 shadow">
        <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Dashboard Pakar</a>
        <ul class="navbar-nav px-3">
            <li class="nav-item text-nowrap">
                <a class="nav-link" href="proseslogout.php">Sign out</a>
            </li>
        </ul>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <?php include 'pakar-sidebar.php'; ?>

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Lihat Pertanyaan</h1>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped table-sm" style="text-align: center;">
                        <thead>
                            <tr>
                                <th>Kode Pertanyaan</th>
                                <th>Isi Pertanyaan</th>
                                <th>Jurusan</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            include "koneksi.php";
                            $sql = "SELECT p.kode_pertanyaan, p.isi_pertanyaan, k.solusi 
                                    FROM tb_pertanyaan p 
                                    LEFT JOIN tb_kesimpulan k ON p.isi_pertanyaan = k.fakta 
                                    ORDER BY p.kode_pertanyaan ASC";
                            $data = mysqli_query($connect, $sql);
                            while ($row = mysqli_fetch_assoc($data)) {
                                echo "<tr>";
                                echo '<td>' . $row['kode_pertanyaan'] . '</td>';
                                echo '<td>' . $row['isi_pertanyaan'] . '</td>';
                                echo '<td>' . $row['solusi'] . '</td>';
                                echo '<td>
                                        <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#editModal" data-kode="' . $row['kode_pertanyaan'] . '" data-isi="' . $row['isi_pertanyaan'] . '" data-jurusan="' . $row['solusi'] . '">Edit</button>
                                        <a href="hapus-pertanyaan.php?kode=' . $row['kode_pertanyaan'] . '" class="btn btn-danger btn-sm" onclick="return confirm(\'Apakah Anda yakin ingin menghapus pertanyaan ini?\')">Hapus</a>
                                    </td>';
                                echo "</tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Edit Pertanyaan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="post" action="edit-pertanyaan.php">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="kode_pertanyaan">Kode Pertanyaan</label>
                            <input type="text" class="form-control" id="kode_pertanyaan" name="kode_pertanyaan" readonly>
                        </div>
                        <div class="form-group">
                            <label for="isi_pertanyaan">Isi Pertanyaan</label>
                            <input type="text" class="form-control" id="isi_pertanyaan" name="isi_pertanyaan">
                        </div>
                        <div class="form-group">
                            <label for="jurusan">Jurusan</label>
                            <select class="form-control" id="jurusan" name="jurusan">
                                <?php
                                $sql = "SELECT * FROM tb_solusi";
                                $data = mysqli_query($connect, $sql);
                                while ($row = mysqli_fetch_assoc($data)) {
                                    echo '<option value="' . $row['isi_solusi'] . '">' . $row['isi_solusi'] . '</option>';
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>
        window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
    </script>
    <script src="https://getbootstrap.com/docs/4.1/assets/js/vendor/popper.min.js"></script>
    <script src="https://getbootstrap.com/docs/4.1/dist/js/bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
        feather.replace()
    </script>

    <!-- Modal Script -->
    <script>
        $('#editModal').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var kode = button.data('kode')
            var isi = button.data('isi')
            var jurusan = button.data('jurusan')
            var modal = $(this)
            modal.find('.modal-body #kode_pertanyaan').val(kode)
            modal.find('.modal-body #isi_pertanyaan').val(isi)
            modal.find('.modal-body #jurusan').val(jurusan)
        })
    </script>
</body>

</html>