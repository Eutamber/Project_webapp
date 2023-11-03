<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styless.css">
    <title>Success</title>
</head>
<body>
    <p class="">Payment success! Thank you. Redirecting to cart in <span id="countdown">3</span> seconds...</p>
    <script>
        let countdown = 3;
        let countdownDisplay = document.getElementById("countdown");

        function updateCountdown() {
            countdown--;
            countdownDisplay.textContent = countdown;
            if (countdown <= 0) {
                window.location.href = "shoping-cartsuccess.php";
            }
        }

        setInterval(updateCountdown, 1000);
    </script>
</body>
</html>
