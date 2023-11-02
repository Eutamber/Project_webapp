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

if ($result === false) {
    die("Query error: " . $connect->error);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Product Detail</title>
	<meta charset="UTF-8">
</head>
<body>
    <?php while($row = $result->fetch_assoc()): ?>
        <img src="<?php echo $row['imge']; ?>">
    <?php endwhile ?>
</body>
</html>
