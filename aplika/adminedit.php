<?php include 'koneksi1.php';
include 'header.php';
if(isset($_GET['id_siswa'])) {
	$id = $_GET['id_siswa'];
	$query = "SELECT * FROM tb_user1 WHERE id_siswa='1'";
	$exec = mysqli_query($conn,$query);
	$res = mysqli_fetch_assoc($exec);
}
if(isset($_POST['simpan'])) {
	$nama_lengkap = htmlentities(strip_tags($_POST['nama_lengkap']));
	$username = htmlentities(strip_tags($_POST['username']));
	$password = htmlentities(strip_tags($_POST['password']));
	$id = $_POST['id_siswa'];

	$query = "UPDATE tb_user1 SET nama_lengkap = '$nama_lengkap', username = '$username', password = '$password' WHERE id_siswa = '$id'";
	$exec = mysqli_query($conn,$query);
	if($exec) {
		echo "<script>alert('data Admin berhasil diedit')  
        document.location = 'index.php';
        </script>";
	}else {
		echo "<script>alert('data Admin berhasil diedit')  
        document.location = 'index.php';
        </script>";
	}
}
?>
<body class="bg-gradient-primary">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-10 col-1g-12 col-md-09">
				<div class="card o-hidden border-0 shadow-1g my-5">
					<div class="card-body p-0">
						<div class="row">
							<div class="col-1g-6 d-done d-lg-block bg-login-image">
								<img width="100%" height="100%" crc="..aplika/img/m.jpg">
							</div>
							<div class="col-1g-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Edit Data Admin</h1>
									</div>
									<form class="user" method="post" action="">
										<div class="form-group">
											<input type="hidden" name="id_siswa" value="<?php echo $res['id_siswa'] ?>">
											<input type="text" autocomplete="off" required name="nama_lengkap" class="form-control form-control-user"
											id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Name..." value="<?php echo $res['nama_lengkap']?>">
										</div>
										<div class="form-group">
											<input type="text" autocomplete="off" required name="username" class="form-control form-control-user"
											id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Username..."value="<?php echo $res['username']?>">
										</div>
										<div class="form-group">
											<input autocomplete="off" type="text" required name="password" class="form-control form-control-user"
											id="exampleInputPassword" placeholder="Password" value="<?= $res['password']?>">
										</div>
										<button type="submit" name="simpan" class="btn btn-primary btn-user btn-block">Simpan</button>
									</form>
								</div>
							</div>
						</div>
					</div> 
				</div>
			</div>
		</div>
		<?php include 'footer.php'; ?>
	</div>
</body>
