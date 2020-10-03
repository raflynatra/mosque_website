<?php
include "koneksi.php";
$jenis = $_POST['jenis'];
$sumber = $_POST['sumber'];
$tanggal = $_POST['tanggal'];
$jumlah = $_POST['jumlah'];

if ($jenis == 'pengeluaran') {
    $query = mysqli_query($conn, "INSERT INTO keuangan (`sumber`,`tanggal`,`pengeluaran`) VALUE ('$sumber','$tanggal','$jumlah')") or die(mysqli_error($conn));
} else {
    $query = mysqli_query($conn, "INSERT INTO keuangan (`sumber`,`tanggal`,`pemasukan`) VALUE ('$sumber','$tanggal','$jumlah')") or die(mysqli_error($conn));
}

if ($query) {
    header("location:admin.php");
} else {
    echo "Gagal!";
}
?>