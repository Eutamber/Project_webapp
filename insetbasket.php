<?php 
    session_start();
    include('servercart.php');
    
    $errors = array();

    if (isset($_POST['reg_user'])) {


        $idcart = $connect->real_escape_string($conn,"");
        $imge = $connect->real_escape_string($conn, $_POST['imge']);
        $topic = $connect->real_escape_string($conn, $_POST['topic']);
        $quantity = $connect->real_escape_string($conn, $_POST['quantity']);
        $color = $connect->real_escape_string($conn,"");
      

        $check_query = "SELECT * FROM `ฺbasket`";
        $query = mysqli_query($conn, $check_query);
        $result = mysqli_fetch_assoc($query);
    }

?>