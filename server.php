<?php
$connect = new mysqli('localhost', 'root', '', 'database_webapp');

if ($connect->connect_error) {
    die("Something wrong: " . $connect->connect_error);
}
?>