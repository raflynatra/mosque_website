<?php
	$host = "localhost";
	$user = "id11962293_admin";
	$pass = "admin123";
	$db = "id11962293_masjid";

	$conn = new mysqli($host,$user,$pass,$db);
	if($conn->connect_error){
		die('Maaf koneksi gagal: '.$connect->connect_error);
	}
?>