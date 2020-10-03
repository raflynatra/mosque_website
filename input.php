<?php
	include "koneksi.php";
	$nama = $_POST['nama'];
	$tanggal = $_POST['tanggal'];
	$waktu = $_POST['waktu'];
    $pj = $_POST['pj'];
    $url = $_POST['url'];

	$query = mysqli_query($conn,"INSERT INTO jadwal_kegiatan (`nama`,`tanggal`,`waktu`,`penanggung_jawab`,`url`) VALUE ('$nama','$tanggal','$waktu','$pj','$url')") or die(mysqli_error($conn));

	if($query){
		header("location:admin.php");
	}
	else{
		echo "Gagal!";
	}
?>