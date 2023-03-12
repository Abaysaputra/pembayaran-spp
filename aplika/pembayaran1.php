<?php 
include 'koneksi1.php';
include 'header.php';
?>
<div class="card shadow mb-4">
	<div class="card-body">
		<form action="" method="get">
			<table class="table">
				<tr>
					<td>NISN</td>
					<td>:</td>
					<td><input type="text" name="nisn" placeholder="Masukan Nisn Siswa" class="form-control"></td>
					<td><button type="submit" class="btn btn-primary" name="cari">Search</button></td>
				</tr>
			</table>
		</form>
	</div>
</div>

<?php 
if (isset($_GET['nisn']) && $_GET['nisn'] !='') {
	$nisn = $_GET['nisn'];
	$query = "SELECT siswa.*,angkatan.*,jurusan.*,kelas.* FROM siswa,angkatan,jurusan,kelas WHERE siswa.id_angkatan = angkatan.id_angkatan AND siswa.id_jurusan = jurusan.id_jurusan AND siswa.id_kelas = kelas.id_kelas AND siswa.nisn = '$nisn'";
	$exec = mysqli_query($conn,$query);
	$siswa = mysqli_fetch_assoc($exec);
	if ($siswa == null) {
		echo '<script>alert("NISN tidak ditemukkan")</script>';
		exit;
	}
	$id_siswa = $siswa['id_siswa'];
	$nisn = $siswa['nisn'];
	$tglbayar = date('d F Y');
 ?>

 <div class="card shadow mb-4">
 	<div class="card-header py-3">
 		<h6 class="m-0 font-weight-bold text-primary">Biodata Siswa</h6>
 	</div>
 	<div class="card-body">
 		<div class="table-responsive">
 			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
 				<tr>
 					<td>NISN</td>
 					<td><?= $siswa['nisn'] ?></td>
 				</tr>
 				<tr>
 					<td>Nama Siswa</td>
 					<td><?= $siswa['nama'] ?></td>
 				</tr>
 				<tr>
 					<td>Kelas</td>
 					<td><?= $siswa['nama_kelas'] ?></td>
 				</tr>
 				<tr>
 					<td>Tahun ajaran</td>
 					<td><?= $siswa['nama_angkatan'] ?></td>
 				</tr>
 			</table>
 		</div>
 	</div>
 </div>
<!-- begin page content -->

	<!--data tales example--->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Data Pembayaran</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100" cellspacing="0">
					<thead>
						<tr>
							<td>No</td>
							<th>Bulan</th>
							<th>Jatuh Tempo</th>
							<th>No Bayar</th>
 							<th>Tangggal Bayar</th>
 							<th>Jumlah</th>
 							<th>Keterangan</th>
 							<th>Aksi</th>
						</tr>
					</thead>
					<tbody>
						<?php 
							$no=1;
						$query = "SELECT * FROM pembayaran WHERE ket = 'lunas' and id_siswa = '$id_siswa' order by jatuhtempo ASC";
						$exe = mysqli_query($conn,$query);
						$count = mysqli_num_rows($exe);
						$countLimit = $count + 1;
						$query2 =  "SELECT * FROM pembayaran WHERE ket = 'lunas' and id_siswa = '$id_siswa' UNION SELECT * FROM pembayaran WHERE ket IS NULL and id_siswa ='$id_siswa' LIMIT $countLimit ";
						$exec = mysqli_query($conn,$query2); 
						while($res = mysqli_fetch_assoc($exec)) { ?>
							<tr>
								<td><?= $no++ ?></td>
								<td><?= $res['bulan']?></td>
								<td><?= $res['jatuhtempo']?></td>
								<td><?= $res['nobayar']?></td>
								<td><?= $res['tglbayar']?></td>
								<td><?= $res['jumlah']?></td>
								<td><?= $res['ket']?></td>
								<td>
									<?php 
								if ($res['nobayar'] == '') {
									echo "<a  href='proses_transaksi.php?nisn=$nisn&act=bayar&id=$res[idspp]'></a>";
									echo "<a class='btn btn-primary btn-sm' href='proses_transaksi.php?nisn=$nisn&act=bayar&id=$res[idspp]'>Bayar</a>";
								}else {
									echo "</a>";
									echo "<a class='btn btn-danger btn-sm' style='margin-right:8px;' href='proses_transaksi.php?nisn=$nisn&act=batal&id=$res[idspp]'>Batal</a>";
									echo "<a  class='btn btn-success btn-sm' href='cetak_slip_pembayaran.php?nisn=$nisn&act=cetak &id=$res[idspp]' target='_blank'>Cetak</a>";
								}
									 ?>
								</td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
				<?php include 'footer.php' ?>
			</div>
		</div>
<?php } ?>

	</div>


 