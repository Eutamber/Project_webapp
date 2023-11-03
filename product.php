<?php
include('setlogin.php');
include('server.php');
    $sql1 = "SELECT * FROM product_webapp";
	$sql2 = "SELECT * FROM `product_webapp` WHERE topic LIKE '%ชุดโต๊ะอาหาร%' ";
	$sql3 = "SELECT * FROM `product_webapp` WHERE types LIKE 'Home Decoration'";
	$sql4 = "SELECT * FROM `product_webapp` WHERE types = 'Bedding' OR topic LIKE '%ชุดห้องนอน%'";
	$sql5 = "SELECT * FROM `product_webapp` WHERE topic LIKE '%ตู้%' ";
	$sql6 = "SELECT * FROM `product_webapp` WHERE types LIKE 'Travel_Equipment' ";
	$sql7 = "SELECT * FROM `product_webapp` WHERE types LIKE 'office' ";

    $result1 = $connect->query($sql1);	
    $result2 = $connect->query($sql2);
	$result3 = $connect->query($sql3);
	$result4 = $connect->query($sql4);
	$result5 = $connect->query($sql5);
	$result6 = $connect->query($sql6);
	$result7 = $connect->query($sql7);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Product</title>
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
	
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			
			<div class="wrap-menu-desktop">
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
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="wrap-menu-desktop">
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

		<!-- Modal Search -->
	
	</header>

	

	
	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*" onClick="showOrHide()">
						All Products
					</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".dining" onClick="showOrHide()">
						Dining
					</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".decoration" onClick="showOrHide()">
					 HOME DECORATION
					</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".bedroom" onClick="showOrHide()">
						Bedroom
					</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".cabinets" onClick="showOrHide()">
						Cabinets
					</button>

					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".travel-equipment" onClick="showOrHide()">
						Travel Equipmaent
					</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".office" onClick="showOrHide()">
						Office
					</button>
				</div>
				
				
				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
					</div>	
				</div>
			</div>
		
		<div class="row isotope-grid">
			<?php while($row = $result1->fetch_assoc()): ?>
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="<?php echo $row['imge']; ?>" alt="IMG-PRODUCT">

							<a href="product-detail.php?id=<?php echo $row['id'];?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
								View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								<?php echo $row['topic']; ?>
								</a>

								<span class="stext-105 cl3">
								<?php echo $row['price']; ?> Baht
								</span>
							</div>							
						</div>
					</div>
				</div>										
			<?php endwhile ?>

		  <!--dining-->
			<div id="elementToWorkOn">
			   <?php while($row = $result2->fetch_assoc()): ?>
			
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item dining" >
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="<?php echo $row['imge']; ?>" alt="IMG-PRODUCT">

							<a href="product-detail.php?id=<?php echo $row['id'];?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
								View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								<?php echo $row['topic']; ?>
								</a>

								<span class="stext-105 cl3">
								<?php echo $row['price']; ?> Baht
								</span>
							</div>							
						</div>
					</div>
				</div>																		
			   <?php endwhile ?>

			<!--decoration-->
			   <?php while($row = $result3->fetch_assoc()): ?>			
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item decoration" >
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="<?php echo $row['imge']; ?>" alt="IMG-PRODUCT">

							<a href="product-detail.php?id=<?php echo $row['id'];?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
								View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								<?php echo $row['topic']; ?>
								</a>

								<span class="stext-105 cl3">
								<?php echo $row['price']; ?> Baht
								</span>
							</div>							
						</div>
					</div>
				</div>																		
			   <?php endwhile ?>

				<!--bedroom-->
			   <?php while($row = $result4->fetch_assoc()): ?>			
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item bedroom" >
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="<?php echo $row['imge']; ?>" alt="IMG-PRODUCT">

							<a href="product-detail.php?id=<?php echo $row['id'];?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
								View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14 ">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								<?php echo $row['topic']; ?>
								</a>

								<span class="stext-105 cl3">
								<?php echo $row['price']; ?> Baht
								</span>
							</div>							
						</div>
					</div>
				</div>																		
			   <?php endwhile ?>

			   <!--cabinets-->
			   <?php while($row = $result5->fetch_assoc()): ?>			
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item cabinets" >
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="<?php echo $row['imge']; ?>" alt="IMG-PRODUCT">

							<a href="product-detail.php?id=<?php echo $row['id'];?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
								View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14 ">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								<?php echo $row['topic']; ?>
								</a>

								<span class="stext-105 cl3">
								<?php echo $row['price']; ?> Baht
								</span>
							</div>							
						</div>
					</div>
				</div>																		
			   <?php endwhile ?>

			    <!--travel-equipment-->
				<?php while($row = $result6->fetch_assoc()): ?>			
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item travel-equipment" >
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="<?php echo $row['imge']; ?>" alt="IMG-PRODUCT">

							<a href="product-detail.php?id=<?php echo $row['id'];?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
								View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14 ">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								<?php echo $row['topic']; ?>
								</a>

								<span class="stext-105 cl3">
								<?php echo $row['price']; ?> Baht
								</span>
							</div>							
						</div>
					</div>
				</div>																		
			   <?php endwhile ?>

			   	<!--office-->
				<?php while($row = $result7->fetch_assoc()): ?>			
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item office" >
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="<?php echo $row['imge']; ?>" alt="IMG-PRODUCT">

							<a href="product-detail.php?id=<?php echo $row['id'];?>" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
								View
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14 ">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
								<?php echo $row['topic']; ?>
								</a>

								<span class="stext-105 cl3">
								<?php echo $row['price']; ?> Baht
								</span>
							</div>							
						</div>
					</div>
				</div>																		
			   <?php endwhile ?>
			</div>		
	</div>
		

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


	

<script src="js/hideandshow.js"></script>
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