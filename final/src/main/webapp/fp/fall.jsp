<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fall</title>
<style>
	
	.test-class {
	 	float: left;
	 	width : 30%;
	}
	
	.footer {
		clear:left;
	}
	
	.border {
    border-style:solid;
    border-width:20px;  
    border-color:transparent;
	}
</style>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div>
		<header class="site-navbar py-3" role="banner">

			<div class="col-6 col-xl-2" data-aos="fade-down">
				<h1 class="mb-0">
					<a href="main" class="text-white h2 mb-0"> <img
						src="images/AHDD2.jpg" alt="" />
					</a>
				</h1>
			</div>

			<div class="container-fluid">
				<div class="row align-items-center">

					<div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
						<nav
							class="site-navigation position-relative text-right text-lg-center"
							role="navigation">

							<ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
								<li class="active"><a href="main">Home</a></li>
								<li class="has-children"><a href="single.html">Gallery</a>
									<ul class="dropdown">
										<li><a href="spring">Spring</a></li>
										<li><a href="summer">Summer</a></li>
										<li><a href="fall">Fall</a></li>
										<li><a href="winter">Winter</a></li>
										<li><a href="recommended">Recommended Travel</a></li>
										<li><a href="best10">Best10</a></li>
									</ul></li>
								<li><a href="services.html">Services</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					</div>

					<div class="col-6 col-xl-2 text-right" data-aos="fade-down">
						<div class="d-none d-xl-inline-block"></div>

						<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
							style="position: relative; top: 3px;">
							<a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
								class="icon-menu h3"></span></a>
						</div>

					</div>

				</div>
			</div>

		</header>
	</div>

	   <div class="container-fluid" data-aos="fade" data-aos-delay="500">
      <div class="row">
       
       
       <!-- 가을1 -->
        <c:forEach var="dto" items="${list}">
        <div class="col-lg-4 test-class border">
          <div class="image-wrap-2">
            <div class="image-info">
              <h2 class="mb-3">가을</h2>
              <a href="fall?type=3"> </a>
            </div>
            <a href="falldetail?type=3">
            <img src="${dto.trimg}" width="700" height="500" alt="Image" class="img-fluid" >
            <p>${dto.trtitle}</p>
            </a>
          </div>
        </div>
      </c:forEach>

    <div class="footer py-4">
      <div class="container-fluid text-center">
        <p>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </p>
      </div>
    </div>





	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/swiper.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/picturefill.min.js"></script>
	<script src="js/lightgallery-all.min.js"></script>
	<script src="js/jquery.mousewheel.min.js"></script>

	<script src="js/main.js"></script>

	<script>
		$(document).ready(function() {
			$('#lightgallery').lightGallery();
		});
	</script>
</body>
</html>