<?php 
include('server.php');
include('setlogin.php');

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
<html lang="en">
<head>
	<title>Shoping Cart</title>
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
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">
	
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">		
			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">					
					<!-- Logo desktop -->		
					<a href="#" class="logo">
						<img src="images/logoo.svg" alt="IMG-LOGO">
					</a>
					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="index.php">Home</a>
							
							</li>

							<li>
								<a href="product.php">Shop</a>
							</li>

							<li>
								<a href="shoping-cart.php">Cart</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">	
						<?php if (isset($_SESSION['username'])) : ?>
						<p style="padding: 0 20px">Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>						
						<?php endif ?>
						<p><a href="index.php?logout='1'" style="color: red; text-align: right; padding: 0 5px">Logout</a></p>					
					</div>
				</nav>
			</div>			
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<nav class="limiter-menu-desktop container">
				<a href="#" class="logo">
						<img src="images/logoo.svg" alt="IMG-LOGO">
				</a>
					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="index.php">Home</a>
								
							</li>

							<li>
								<a href="product.php">Shop</a>
							</li>

							<li>
								<a href="shoping-cart.php">Cart</a>
							</li> 
						</ul>
					</div>

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">	
						<?php if (isset($_SESSION['username'])) : ?>
						<p style="padding: 0 20px">Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>						
						<?php endif ?>
						<p><a href="index.php?logout='1'" style="color: red; text-align: right; padding: 0 5px">Logout</a></p>					
					</div>
				</nav>
			</div>
		</div>		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">Product</th>
									<th class="column-2"></th>
									<th class="column-3">Price</th>
									<th class="column-4">Quantity</th>
									<th class="column-5">Total</th>
								</tr>			
								<?php while ($row = $result->fetch_assoc()): ?>
								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="<?php echo $row['imge'];?>" alt="IMG">
										</div>
									</td>
									<td class="column-2"><?php echo $row['topic'];?></td>
									<td class="column-3"><?php echo $row['price'];?></td>
									<td class="column-4"><?php echo $row['quantity'];?></td>
									<td class="column-5">$<?php echo $row['price'];?></td>
								</tr>
								<?php endwhile; ?>
							</table>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<div class="flex-w flex-t p-t-27 p-b-33">
    						<div class="size-208">
        						<span class="mtext-101 cl2">
            						Total:
       							 </span>
    						</div>
    						<div class="size-209 p-t-1">
        						<span class="mtext-110 cl2">
           							 <?php echo number_format($total, ); ?> BATH
        						</span>
    						</div>
						</div>
						<a href="check_out.php" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04">
							check out							
						</a>
					</div>
				</div>
			</div>
		</div>
	</form>
<!-- Footer -->
<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
							     DINING
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
							    HOME DECORATION
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
							    BEDROOM
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
							    CABINETS
							</a>
						</li>
						
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
							    TRAVEL EQUIPMAENT
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
							    OFFICE
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Help
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Track Order
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Returns 
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shipping
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								FAQs
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
						Any questions? Let us know in  at 199 Moo 6, Thungsukla, Sriracha, Chonburi 20230
					</p>

				</div>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>




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
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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