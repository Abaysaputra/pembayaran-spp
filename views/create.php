<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../aplika/css/log.css">
</head>
<body>
<script>    
        const labels = document.querySelectorAll(".form-control label");
labels.forEach((label)=>{
    label.innerHTML = label.innertext
    .split("")
    .map(
        (letter, idx )=>
            <span  style="transition-delay:${idx * 50}ms">${letter}</span>
    )
    .join("");
});

    </script>
  
    <div class="container">
        <h1>REGISTER</h1>
    <form method="post" action="">
        <div class="form-control">
            <input type="text" required placeholder="Nama Lengkap" name="namalengkap"/>
            <label for="Your Username"></label>
        </div>
        <div class="form-control">
            <input type="text" required placeholder="Username" name="username"/>
            <label for="Your password"></label>
        </div>
        <div class="form-control">
            <input type="password" required placeholder="Password" name="password"/>
            <label for="Your password"></label>
        </div>
        <div class="form-control">
            <input type="text" maxlength="13" required placeholder="NISN" name="nisn"/>
            <label for="Your password"></label>
        </div>
        <div class="form-control">
            <input type="text" maxlength="13" required placeholder="No. Telepon" name="telp"/>
            <label for="Your password"></label>
        </div>

        <button class="btn" name="login" value="Regist">Register</button>
        <p>Don't have an account?
            <a href="log.php">Login</a></p>
    </form>
    <!-- php -->
<?php
include '../aplika/koneksi1.php';
if(isset($_POST['login'])){
    $namalengkap=$_POST['namalengkap'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    $nisn=$_POST['nisn'];
    $telp=$_POST['telp'];
    $level = 'siswa';
// cek kondisi jika input kosong
if($namalengkap=="" || $username=="" || $password=="" || $telp=="" || $level=="" || $nisn==""){
        echo"Input tidak boleh kosong";
}else {
                    $ambil = mysqli_query($conn, "select * from tb_user1 where nisn='$nisn'");
                    $ketemu = mysqli_num_rows($ambil);
                    $data = mysqli_fetch_assoc($ambil);
                if($ketemu == 1){
                     $insert = $conn -> query("INSERT INTO tb_user1
                (nama_lengkap,username,password,nisn,telp,level)
                values 
                ('$namalengkap','$username','$password','$nisn','$telp','$level')");
                    
                }else{ //jika ada maka tambahkan
                    echo "<script>
                           alert('nisn tidak ditemukan');
                            window.location.href = '../index.php'
                          </script>";
        }
    }
}
?>  

</div>
</body>
</html>