<?php include 'header.php';
include 'koneksi1.php';?>
<div class="card show mb-4">	
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Cetak Data Laporan</h6>
		</div>
		<div class="card-body">
			<form action="cetak_laporan.php" method="get" target="_blank">
				<label style="font-size: 14px">Nama Masyarakat</label>
        		<select class="form-control" name="id_siswa">
        			<option>-Pilih-
        				<?php
			                $query = $conn->query("SELECT * FROM siswa ORDER BY id_kelas");
			                while ($data=$query->fetch_assoc()){
			                    echo "<option value='$data[id_kelas]'>$data[id_kelas]</option>";
			                }
			            ?>
        			</option>
        		</select>
				<input type="date" name="awal" class="form-control mb-2">
				<input type="date" name="akhir" class="form-control mb-2">
				<button type="submit" class="btn btn-primary" name="cetak">Cetak</button>
			</form>
		</div>
<?php include 'footer.php'; ?>
</div>

