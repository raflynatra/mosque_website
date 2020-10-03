<?php
	session_start();
	include 'koneksi.php';
	
	$form_error = '';
	if(isset($_POST['submit'])){
		$username = $_POST['username'];
		$password = $_POST['password'];
		$check = "select * from admin WHERE username = '$username' AND password = '$password'";
		$_SESSION['username'] = $username;
		$_SESSION['password'] = $password;
		if($username==$_SESSION['username'] AND $password== $_SESSION['password']){
			$_SESSION['username'] = $username;
			header("location:admin.php");
		}
		else{
			$form_error = '<p>Username atau Password Salah<p>';
		}
	}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Masjid Al-Munawwarah</title>
	<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">

	</style>
	<script type="text/javascript">
		// Prevent dropdown menu from closing when click inside the form
		$(document).on("click", ".navbar-right .dropdown-menu", function(e) {
			e.stopPropagation();
		});
	</script>
</head>

<body id="bg">
	<nav class="navbar navbar-default navbar-expand-lg navbar-light">
		<div class="navbar-header d-flex col">
			<a class="navbar-brand" href="home.php">Masjid <b>Al-Munawwarah</b></a>
			<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle navbar-toggler ml-auto">
				<span class="navbar-toggler-icon"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<!-- Collection of nav links, forms, and other content for toggling -->
		<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
			<ul class="nav navbar-nav">
				<li class="nav-item"><a href="home.php" class="nav-link">Home</a></li>
				<li class="nav-item dropdown">
					<a data-toggle="dropdown" class="nav-link dropdown-toggle" href="">Kegiatan <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="infokegiatan.php" class="dropdown-item">Info kegiatan</a></li>
						<li><a href="galerikegiatan.php" class="dropdown-item">Galeri kegiatan</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a data-toggle="dropdown" class="nav-link dropdown-toggle" href="">Informasi <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#" class="dropdown-item">Jadwal Imam & Khatib</a></li>
						<li><a href="infokeuangan.php" class="dropdown-item">Keuangan</a></li>
					</ul>
				</li>
				<li class="nav-item"><a href="#" class="nav-link">About</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right ml-auto">
				<li class="nav-item">
					<a data-toggle="dropdown" class="btn btn-primary mt-1 mb-1" href="#">Login</a>
					<ul class="dropdown-menu login-form">
						<li>
							<form method="post">
								<div class="form-group">
									<label>Username</label>
									<input type="text" name="username" class="form-control" required="required">
								</div>
								<div class="form-group">
									<div class="clearfix">
										<label>Password</label>
										
									</div>
									<input type="password" name="password" class="form-control" required="required">
								</div>
								<input type="submit" name="submit" class="btn btn-primary btn-block" value="Login">
							</form>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>

	<!--Banner-->
	<div class="banner">
		<div class="bg-color">
			<div class="container">
				<div class="row">
					<div class="banner-text text-center">
						<h2 class="text-dec">Selamat Datang <br> di Masjid Al-Munawarrah</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ Banner-->

	<!-- Content -->
    

	<footer class="bg-dark">
        <div class="container inner pt-60 pb-60">
            <div class="row foot">
                <div class="col-sm-12 col-md-6">
                    <div class="widget">
                        <h3 class="">Lokasi</h3>
                        <img src="images/peta.jpg" width="90%">
                    </div>
                </div>

                <div class="space30 visible-sm clearfix"></div>
                <div class="col-sm-12 col-md-6">
                    <div class="widget">
                        <h3 class="">Kontak Kami</h3><br>
                        <p><b> Masjid Al-Munawarrah </b></p>
                        <div class="space20"></div>
                        <p>Komplek Sarana Indah Permai, Jl. Beringin 8 Blok C4 No.1, <br> Kedaung, Kec. Pamulang, Kota Tangerang Selatan,<br> Banten 15415</p>
                        <p>+62 (021) 381 1708 </p>
                    </div>
                </div>
            </div>
            <center>
                <h4 class="head">&copy; Copyrights 2019. All Right Reserved.</h4>
            </center>
        </div>
    </footer>
</body>

</html>