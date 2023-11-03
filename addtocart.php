<?php 
include('server.php');
$id = "";
if(isset($_GET["id"])){
    if(isset($_GET['num-product'])){
        $quantity = $_GET['num-product'];
    }else{
        $quantity = 1;
    }
    $id = $_GET["id"];
    $_SESSION['cart'][$id]= array('num-product' => $quantity);
    echo '<pre>';
    print_r($_SESSION['cart']);
    echo '</pre>';
}

$sql = "SELECT * FROM product_webapp WHERE id = $id";
$result = $connect->query($sql);
?>