<?php 
include('server.php');
$sql = "SELECT * FROM `ฺbasket`";  
$result = $connect->query($sql);
$total = 0; 

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $total += $row['price'];
    }
}$result->data_seek(0);



?>
<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" type="text/css" href="css/styless.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <div class="checkout-container">
        <div class="checkout-form">
            <div class="container">
            <div class="container" style="display: flex; justify-content: space-between;">
    <a href="shoping-cart.php">
        &lt; Shopping Cart
    </a>
    <a href="payment-success.php">
         next &gt;
    </a>
</div>

           
            </div>
            
            <h2>Checkout</h2>
            <h3>Delivery time will not exceed 7 working days.</h3>
            <form>
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="button-51" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea id="address" name="address" required></textarea>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" class="button-51" required>
                </div>                
                <h3>After transferring, the company will check the balance and then deliver the items.</h3>
            </div>
            <div class="order-summary">
                <h2>Order Summary</h2>
                <h3>Pay the transfer at this qrcode</h3>
                <ul id="product-list"></ul>
                <img src="images/Qrcodepay.jpg" class="Qrcodebank" alt="QR Code"></img>
                <p>Total: <?php echo number_format($total, ); ?> BATH</p>
            </div>
        </div>
    </div>
    <script src="js/scriptt.js"></script>

</body>
</html>


