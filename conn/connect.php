<?php 
$host = "127.0.0.1";
$database = "pizzaria_estelar";
$user = "root";
$pass = "";
$charset = "utf8";
$port = "3306";

try{
    // lembre dessa variável quando usar um comando SQL no PHP
    $conn = new mysqli($host,$user, $pass,$database,$port);
    mysqli_set_charset($conn, $charset);
}catch (Throwable $th){
    die("Atenção rolou um ERRO, Cara! ".$th);
}   

?>