<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $idcart = "";
    $imge = $_POST["imge"];
    $topic = $_POST["topic"];
    $quantity = $_POST["quantity"];
    $color = "";

    // เชื่อมต่อกับฐานข้อมูล
    $connect = new mysqli('localhost', 'root', '', 'database_webapp');

    
    if ($connect->connect_error) {
        die("Something wrong: " . $connect->connect_error);
    }

    // ตรวจสอบความถูกต้องของข้อมูลและป้องกัน SQL Injection
    $idcart = $connect->real_escape_string($idcart);
    $imge = $connect->real_escape_string($imge);
    $topic = $connect->real_escape_string($topic);
    $quantity = $connect->real_escape_string($quantity);
    $color = $connect->real_escape_string($color);

    // สร้างคำสั่ง SQL สำหรับการ INSERT
    $query = "INSERT INTO `ฺbasket` (id, imge, topic, quantity, color) VALUES ('$idcart', '$imge', '$topic', '$quantity', '$color')";

    // ทำการ query INSERT
    if ($connect->query($query) === TRUE) {
        echo "เรียบร้อย";
    } else {
        echo "มีข้อผิดพลาด: " . $connect->error;
    }

    // ปิดการเชื่อมต่อกับฐานข้อมูล
    $connect->close();
}
?>