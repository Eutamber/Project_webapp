<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $idcart = $_POST["num-product"];
    $imge = $_POST["imge"];
    $topic = $_POST["topic"];
    $quantity = $_POST["quantity"];
    $color = $_POST["color"];

    // เชื่อมต่อกับฐานข้อมูล
    $connect = new mysqli('localhost', 'root', '', 'database_webapp');

    $id = "";
    if(isset($_GET["id"])){
        $id = $_GET["id"];
    }
    
    $sql = "SELECT * FROM product_webapp WHERE id = $id";
    $result = $connect->query($sql);
    
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

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Product Detail</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">
    <div class="flex-w flex-r-m p-b-10">
        <div class="size-204 flex-w flex-m respon6-next">
        <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
			<div class="wrap-num-product flex-w m-r-20 m-tb-10">
				<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
					<i class="fs-16 zmdi zmdi-minus"></i>
				</div>                
				<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1" >
                       
				<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
					<i class="fs-16 zmdi zmdi-plus"></i>
				</div>
			   </div>
                  <input name="num-product" >
                  <input name="imge">
                 <input name="topic">
                 <input name="quantity">
                <input name="color">

				<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail" type="submit">
											Add to cart
										</button>
				</div>
			</div>
    </form>


<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>

</html>
