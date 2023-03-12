<?php 
session_start();
include '../aplika/koneksi1.php';
$id = $_POST['id_siswa'];
$username = $_POST['username'];
$password = $_POST['password'];
 
$query = mysqli_query($conn, "select * from tb_user1 where username='$username' and password='$password'");
$cek = mysqli_num_rows($query);
if($cek>0){
    $data = mysqli_fetch_assoc($query);
    if($data['level']=="admin"){
        $_SESSION["username"] = $username;
        $_SESSION['level']="admin";
        $_SESSION['id_siswa'] = $data['id_siswa'];
        $_SESSION['nama'] = $data['nama_lengkap'];
        header("location:../aplika/");

    }else if($data['level']=='petugas'){
        $_SESSION['username'] = $username;
        $_SESSION['level'] = 'petugas';
        $_SESSION['id_siswa'] = $data['id_siswa'];
        $_SESSION['nama'] = $data['nama_lengkap'];
        header("location:../aplika/indexpetugas.php");
    }else if($data['level']=='siswa'){
        $_SESSION['nisn'] = $data['nisn'];
        $_SESSION['username'] = $username;
        $_SESSION['level'] = 'siswa';
        $_SESSION['id_siswa'] = $data['id_siswa'];
        $_SESSION['nama'] = $data['nama_lengkap'];
        header("location:../aplika/indexsiswa.php");
    }else{
        header("location:../apila/index.php?pesan=gagal");
    }



    // echo "Password/username salah";
    // return 0;
}
    else{
        ?>
        <script language="JavaScript">
                            alert('Username/Password Salah,Harap Periksa kembali');
                            document.location='../views/log.php';
                        </script>
    
                        <?php
                        };
        ?>

