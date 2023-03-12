<?Php
include'header.php';
include 'koneksi1.php';

if(isset($_GET['id_kelas'])) {
    $id_kelas = $_GET['id_kelas'];
    $exec = mysqli_query($conn,"DELETE FROM kelas WHERE id_kelas ='$id_kelas'");
    if($exec) {
        echo "<script>alert('data kelas berhasil dihapus')  
        document.location = 'editdatakelas.php';
        </script>";
    }else{
        echo "<script>alert('data kelas gagal dihapus')  
        document.location = 'editdatakelas.php';
        </script>";
    }

}


 ?>
 <!-- button triger -->
 <button class="btn btn-primary mb-3 m-3" data-bs-toggle="modal" data-bs-target="#exampleModal">Tambah Data</button>
<!-- button triger -->
<!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Data kelas</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" >
                                    <thead>
                                        <tr>
                                            <th>No</th>       
                                            <th>Nama kelas</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <?php 
                                    $no=1;
                                    $query = "SELECT * FROM kelas ";
                                    $exec = mysqli_query($conn,$query);
                                    while ($res = mysqli_fetch_assoc($exec)) :
                                       
                                     ?>
                                    <tbody>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= $res ['nama_kelas'] ?></td>
                                            <td>
                                                <a href="editdatakelas.php?id_kelas=<?= $res['id_kelas'] ?>"class="btn btn-sm btn-danger" onclick="return confirm('Apakah Yakin Ingin Menghapus Data?')">Hapus</a>
                                    

                                            </td>
                                        </tr>
                                        <?php endwhile; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- Tambah -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Data kelas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
      </div>
      <div class="modal-body">
        <form action="" method="POST">
            <input type="text" name="nama_kelas" placeholder="Nama kelas" class="form-control">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="Submit" value="simpan" name="simpan" class="btn btn-primary">Simpan</button>
        </form>
      </div>
    </div>
  </div>

</div>

<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title fs-5" id="exampleModalLabel">Edit Data Kelas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
      </div>
      <div class="modal-body" id="datakelas">
        </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="Submit" value="edit" name="edit" class="btn btn-primary">Simpan</button>
        </form>
      </div>
    </div>
  </div>

  <?php include'footer.php'; ?>
</div>

<?php 

if(isset($_POST['simpan'])) {
    $nama_kelas = htmlentities(strip_tags(strtoupper($_POST['nama_kelas'])));

    $query = "INSERT INTO kelas (nama_kelas) VALUES ('$nama_kelas')";
    $exec = mysqli_query($conn, $query);
    if ($exec) {
        echo "<script>alert('data kelas berhasil disimpan')  
        document.location = 'editdatakelas.php';
        </script>";
    }else{
         echo "<script>alert('data kelas gagal disimpan')  
        document.location = 'editdatakelas.php';
        </script>";  
    }
}


 ?>
    <script type="text/javascript">
        $('.view_data').click(function() {
            var id_kelas = $(this).attr('id');
            $.ajax({
                url: 'view.php',
                method: 'post',
                data: {id_kelas:id_kelas},
                success:function(data){
                    $('#datakelas').html(data)
                    $('#myModal').modal('show');
                }
            })
        })
        
    </script>

<?php   
if(isset($_POST['edit'])) {
    $id_kelas = $_POST['id_kelas'];
    $nama_Kelas = htmlentities(strip_tags(strtoupper($_POST['nama_kelas'])));
    $query = "UPDATE kelas SET nama_kelas = '$nama_kelas' WHERE id_kelas = '$id_kelas' ";
    $exec = mysqli_query($conn,$query);
    if($exec) {
        echo "<script>alert('data kelas berhasil diedit')
        document.location = 'editdatakelas.php' </script>;
        "
        ;
    }else {
        echo "<script>alert('data kelas gagal diedit')
        document.location = 'editdatakelas.php' </script>;
        "
        ;
    }

    }
?>
