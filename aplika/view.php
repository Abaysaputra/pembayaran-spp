<?php include 'koneksi1.php';

if (isset($_POST['id_siswa'])) {
	$id_siswa = $_POST['id_siswa'];
	
	$query = "SELECT siswa.*,angkatan.*,jurusan.*,kelas.* FROM siswa,angkatan,jurusan,kelas WHERE siswa.id_angkatan = angkatan.id_angkatan AND siswa.id_jurusan = jurusan.id_jurusan AND siswa.id_kelas = kelas.id_kelas and siswa.id_siswa = '$id_siswa'";
		$exec = mysqli_query($conn,$query);
		$res =mysqli_fetch_array($exec)
 ?>


 		<form action="editdatasiswa.php" method="POST">
 			<input type="hidden" name="id_siswa" value="<?= $res['id_siswa'] ?>">
 			<input type="hidden" name="nisn" value="<?= $res['nisn'] ?>">
 			<input type="text" class="form-control mb-2" name="" value="<?= $res['nisn'] ?>">
 			<input type="text" class="form-control mb-2" name="nama" value="<?= $res['nama'] ?>">
			
 			<select class="form-control mb-2" name="id_angkatan" id="">
 				<option value="">-Pilih Angkatan-</option>
 				<?php 
 					$selected="";
 					$exec = mysqli_query($conn,"SELECT * FROM angkatan order by id_angkatan");
 					while($angkatan = mysqli_fetch_assoc($exec)) :
 						if ($res['id_angkatan'] == $angkatan['id_angkatan']) {
 							$selected = 'selected';
 						}else {
 							$selected="";
 						}
 						echo "<option $selected value=".$angkatan['id_angkatan'].">".$angkatan['nama_angkatan']."</option>";
 					endwhile;
 				 ?>
 			</select>
 			<select class="form-control mb-2" name="id_kelas" >
 				<option value="">-Pilih Kelas</option>
 				<?php 
 					$exec = mysqli_query($conn,"SELECT * FROM kelas order by id_kelas");
 					while($angkatan = mysqli_fetch_assoc($exec)) :
 						if ($res['id_kelas'] == $angkatan['id_kelas']) {
 							$selected = 'selected';
 						}else {
 							$selected="";
 						}
 						echo "<option $selected value=".$angkatan['id_kelas'].">".$angkatan['nama_kelas']."</option>";
 					endwhile;
 				 ?>
 			</select>
 			<select class="form-control" name="id_jurusan">
 				<option value="">-Pilih Jurusan</option>
 				<?php 
 					$exec = mysqli_query($conn,"SELECT * FROM jurusan order by id_jurusan");
 					while($angkatan = mysqli_fetch_assoc($exec)) :
 						if ($res['id_jurusan'] == $angkatan['id_jurusan']) {
 							$selected = 'selected';
 						}else {
 							$selected="";
 						}
 						echo "<option $selected value=".$angkatan['id_jurusan'].">".$angkatan['nama_jurusan']."</option>";
 					endwhile;
 				 ?>
 			</select>
 			<textarea class="form-control mt-2" name="alamat" placeholder="Alamat Siswa"><?= $res['alamat'] ?></textarea>

	<div class="modal-footer">
    		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    		<button type="Submit" name="edit" value="edit" class="btn btn-primary">Simpan</button>
</form>

<?php } ?>
 		<?php 
 		if (isset($_POST['id_kelas'])) {
 			$id_kelas = $_POST['id_kelas'];
 			// $nama_kelas = htmlentities(strip_tags(strtoupper($_POST['nama_kelas'])));
 			$exec = mysqli_query($conn,"SELECT * FROM kelas WHERE id_kelas = $id_kelas;");
			 echo $id_kelas;
			 echo "data";
			 var_dump($exec);
 			$res = mysqli_fatch_assoc($exec);
			 
 			?>
 				<form action="editdatakelas.php" method="POST">
 				<input type="hidden" name="id_kelas" value="<?= $res['id_kelas'] ?>">
 				<input type="text" name="nama_kelas" class="form-control" value="<?= $res['nama_kelas']?>">
 				<div class="modal-footer">
    			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    			<button type="Submit" name="edit" class="btn btn-primary">Simpan</button>
				</form>

 		<?php }
 		if (isset($_POST['id_jurusan'])) {
 			$id_jurusan = $_POST['id_jurusan'];
 			$nama_jurusan = htmlentities(strip_tags(strtoupper($_POST['nama_jurusan'])));
 			$exec = mysqli_query($conn,"SELECT * FROM jurusan WHERE id_jurusan = '$id_jurusan'");
 			$res = mysqli_fatch_assoc($exec);
			
 			?>
 				<form action="editdatajurusan.php" method="POST">
 				<input type="hidden" name="id_jurusan" value="<?= $res['id_jurusan'] ?>">
 				<input type="text" name="nama_jurusan" class="form-control" value="<?= $res['nama_jurusan']?>">
 				<div class="modal-footer">
    			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    			<button type="Submit" name="edit" class="btn btn-primary">Simpan</button>
				</form>
		<?php }
		if (isset($_POST['id_angkatan'])) {
 			$id_angkatan = $_POST['id_angkatan'];
 			
 			$exec = mysqli_query($conn,"SELECT * FROM angkatan WHERE id_angkatan = '$id_angkatan'");
 			$res = mysqli_fetch_assoc($exec);
			
		?>

		 	<form action="editdataangkatan.php" method="POST">
 				<input type="hidden" name="id_angkatan" value="<?= $id_angkatan?>">
 				<label for="input-group">Nama Angkatan</label>
 				<input type="text" name="nama_angkatan" class="form-control" value="<?= $res['nama_angkatan']?>">

				<label for="input-group">Biaya</label>
 				<input type="text" name="biaya" class="form-control" value="<?= $res['biaya']?>">
			
 				<?php 
 				
				}?>
 		
 				<div class="modal-footer">
    			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    			<button type="Submit" name="edit" class="btn btn-primary">Simpan</button>
				</form>
 			
 			