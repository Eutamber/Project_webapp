<?php 

if(isset($_GET["id"])){
    $id = $_GET["id"];
}

$sql = "SELECT * FROM product_webapp WHERE id = $id";
$result = $connect->query($sql);
?>