<script>
document.querySelector('#payment-form').addEventListener('submit', function(e) {
    e.preventDefault();
    alert('Payment successful! Redirecting...');
    // You can add additional payment processing logic here.

    // Redirect the user to the payment success page after a delay (for example, 2 seconds).
    setTimeout(function() {
        window.location.href = 'payment-sucess.html';
    }, 2000); // 2000 milliseconds (2 seconds)
});
</script>