<?php 
    $connect = new mysqli('localhost', 'root', '', 'database_webapp');

    if ($connect->connect_error) {
        die("Something wrong: " . $connect->connect_error);
    }
    
    $id = "";
    if(isset($_GET["id"])){
        $id = $_GET["id"];
    }
    
    $sql = "SELECT * FROM product_webapp WHERE id = $id";
    $result = $connect->query($sql);


?>