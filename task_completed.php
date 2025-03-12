<?php
include "controllers/c_user.php";
$pengguna = $user->tampil_data('selesai');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='style.css'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>TO DO LIST</title>
    <style>
        /* Styling Sidebar */
        .sidebar {
            height: 100vh;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #212529; /* Warna hitam */
            padding-top: 20px;
        }
        .sidebar h4 {
            color: white;
            text-align: center;
            margin-bottom: 20px;
        }
        .sidebar a {
            padding: 12px 20px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            transition: 0.3s;
        }
        .sidebar a:hover {
            background-color: #343a40;
        }
        .content {
            margin-left: 270px;
            padding: 20px;
        }
        /* Styling Tabel */
        .table-custom {
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .table-custom th {
            background-color: #0d6efd;
            color: white;
        }
        .table-custom tbody tr:hover {
            background-color: #f8f9fa;
        }
    </style>
</head>

<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h4>MENU</h4>
        <a href="index.php">🏠 Home</a>
        <a href="task_completed">✅ Task Completed</a>
        <a href="create.php" class="btn btn-success w-100 mt-2">➕ Tambah Data</a>
    </div>

    <!-- Konten utama -->
    <div class="content">
        <h2 class="text-center mb-4">TO DO LIST</h2>

        <!-- Tabel -->
        <div class="table-responsive">
            <table class="table table-bordered table-striped text-center table-custom">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul</th>
                        <th>Deskripsi</th>
                        <th>Status</th>
                        <th>Prioritas</th>
                        <th>Deadline</th>
                        <th>Diselesaikan Tanggal</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $nomor = 1;
                    foreach ($pengguna as $task): ?>
                        <tr>
                            <td><?= $nomor++; ?></td>
                            <td><?= $task->judul ?> </td>
                            <td><?= $task->deskripsi ?> </td>
                            <td><?= $task->status ?> </td>
                            <td><?= $task->prioritas ?> </td>
                            <td><?= $task->deadline ?> </td>
                            <td><?=date('Y-m-d H:i:s', strtotime($task->dibuat_tgl)) ?> </td>
                            <td>
                                
                                <a onclick="return confirm('Apakah anda yakin data akan dihapus?')" href="../controllers/c_user.php?id=<?= $task->id?>&aksi=hapus" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
