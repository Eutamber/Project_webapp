<?php 
    // Create connection
    $connect = new mysqli('localhost', 'root', '', 'database_webapp');

    // Check Connection

    if ($connect->connect_error) {
        die("Something wrong.: " . $connect->connect_error);
      }

    $sql1 = "SELECT * FROM `product_webapp` WHERE topic LIKE '%ชุดโต๊ะอาหาร%' ";    
    $sql2 = "SELECT * FROM `product_webapp`";
    $result1 = $connect->query($sql1);
    $result2 = $connect->query($sql2);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Menu</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/util.css">
</head>
<body>
    <div class="container">
    <?php while($row = $result1->fetch_assoc()): ?>  
        <h1><?php echo $row['topic']; ?></h1>    
    <?php endwhile ?>
    <?php while($row = $result2->fetch_assoc()): ?>  
        <h1><?php echo $row['topic']; ?></h1>    
    <?php endwhile ?>
    </div>
    
</body>
</html>