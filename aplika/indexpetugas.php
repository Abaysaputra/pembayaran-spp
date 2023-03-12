<?php 
include 'headerpetugas.php'; 
include 'koneksi1.php';
if(isset($_SESSION['siswa'])) {
    header('location:log.php');
};
$id_siswa = $_SESSION['id_siswa'];

?>  
<!-- Page Heading -->
                   

                    <!-- Content Row -->
                    <div class="row">
                    <?php
        include "koneksi1.php";

      

        //kondisi jika parameter pencarian kosong

            $query = mysqli_query($conn, "SELECT * FROM tb_user1 where tb_user1.id_siswa = $id_siswa");
           

        foreach ($query as $row ) {
        ?>
                       

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4 m-3">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <!-- <p><span class="mr-2 d-none d-lg-inline text-gray-800"> <?php echo $row['nama_lengkap']; ?></span></p> -->
                                        <div class="col mr-3">
                                        <form>
  <fieldset disabled>
    <legend>Profil Kamu</legend>
    <div class="mb-3">
        <label for="disabledTextInput" class="form-label text-dark fw-bold fs-2" >Nama Lengkap</label>
        <input type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $row['nama_lengkap']; ?>">
        <label for="disabledTextInput" class="form-label text-dark fw-bold fs-2" >Username</label>
        <input type="text" id="disabledTextInput" class="form-control" placeholder=" <?php echo $row['username']; ?>">
        <label for="disabledTextInput" class="form-label text-dark fw-bold fs-2" >Password</label>
        <input type="password" id="disabledInput" class="form-control" placeholder="<?php echo $row['password']; ?>">
        <label for="disabledTextInput" class="form-label text-dark fw-bold fs-2" >Telp</label>
        <input type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $row['telp']; ?>">
        <!-- <label for="disabledTextInput" class="form-label text-dark fw-bold fs-2" >Status</label>
        <input type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $row['Status']; ?>"> -->
    </div>
  </fieldset>
</form>

<?php
        }
            ?>
                                        </div>
                                        <div class="col-auto">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <?php include 'footer.php'; ?>
                    </div>
