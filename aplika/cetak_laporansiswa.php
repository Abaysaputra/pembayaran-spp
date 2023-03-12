<?php 
session_start();
if(isset($_SESSION['level'])){
    include 'koneksi1.php';
    $awal = $_GET['awal'];
    $akhir = $_GET['akhir'];
 ?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Laporan Pembayaran</title>
     <style>
         body{
            font-family: arial;
         }
         table{
            border-collapse: collapse;
         }
     </style>
 </head>
 <body onload="window.print()">
    <h3>SMK Negeri Purwosari <b><br>LAPORAN PEMBAYARAN SPP</b></h3>
     <br>
     <hr>
     Tanggal <?= $awal."sampai".$akhir; ?>
     <br>
     <br>
     <table border="1" cellspacing="" cellpadding="4" width="100%">
         <tr>
            <th>NO</th>
            <th>NIS</th>
            <th>NAMA SISWA</th>
            <th>KELAS</th>
            <th>NO.BAYAR</th>
            <th>PEMBAYARAN BULAN</th>
            <th>JUMLAH</th>
            <th>KETERANGAN</th>
         </tr>
         <?php 
         $spp = mysqli_query($conn,"SELECT siswa.*,pembayaran.* FROM siswa,pembayaran WHERE pembayaran.id_siswa = siswa.id_siswa AND tglbayar BETWEEN '$awal' AND '$akhir' order by nobayar");
         $i=1;
         $total = 0;


while ($dta=mysqli_fetch_assoc($spp)) :
          ?>
        <tr>
            <td align="center"><?= $i ?></td>
            <td align="center"><?= $dta['id_siswa'] ?></td>
            <td align="center"><?= $dta['nisn'] ?></td>
            <td align=""><?= $dta['nama'] ?></td>
            <td align=""><?= $dta['nobayar'] ?></td>
            <td align=""><?= $dta['bulan'] ?></td>
            <td align="right"><?= $dta['jumlah'] ?></td>
            <td align="center"><?= $dta['ket'] ?></td>
        </tr>
        <?php $i++; ?>
        <?php $total += $dta['jumlah']; ?>
<?php endwhile ; ?>
<tr>
    <td colspan="7" align="right">TOTAL</td>
    <td align="right"><b><?= $total ?></b></td>
</tr>
<table width="100%">
    <tr>
        <td></td>
        <td width="200px">
            <br>
            <p>Purwosari, <?= date('d/m/y') ?> <br>
            Operator, </p>
            <br>
            <br>
            <br>
            <p>_____________________</p>
            
        </td>
    </tr>
</table>
     </table>
 </body>
 </html>
<?php 

} else {
    header("location:log.php");
}
    ?>