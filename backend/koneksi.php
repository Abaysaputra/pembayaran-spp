<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname   = "db_spp";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection

if (!$conn) {

    die("Connection failed: " . mysqli_connect_error());

}
// nggo nampilno data ne ben gk usah nganggo mysqli fetch assoc trus" an
function result($data){
    //iki nggo nampung data soko database neng njero array
  $arr = array();
  //iki nggo ngeloop
  while($k = mysqli_fetch_assoc($data)){
    //iki nggo ngelebok no data seng di loop neng njero array
    $arr[] = $k;
  }
  //iki nggo nampil no hasil e
  return $arr;
}

?>