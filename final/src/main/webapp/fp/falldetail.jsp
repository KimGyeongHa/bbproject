<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fall detail</title>
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
	
	
	
	.detail-header {
/* 	> figure > figcaption  */
    width: 50%;
    float: right;
    border-top: 3px solid #ff7567;
    padding: 0.8% 1%;
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

			<div class="container-fluid border" >
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
						<div class="d-none d-xl-inline-block">
							
						</div>

						<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
							style="position: relative; top: 3px;">
							<a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
								class="icon-menu h3"></span></a>
						</div>

					</div>

				</div>
			</div>
	
			<div id="sub-content">
							
						<div>
						<img src="images/fall.jpg" width="400px" height="400px" alt="" />
						</div>
							
				<section class="detail-header">
					<figure>
						</a>
					<figcation>
					<ul>
						<li id="addr">
							<strong>위치</strong>
							<span>주소
							 	<!-- <a href="">길찻기</a> -->
							</span>
						</li>
						<li id="tel">
							<strong>안내전화</strong>
							<!-- <a href="tel:010-0000-0000">전화번호</a> -->
						</li>
						<li id="playtime">
							<strong>이용시간</strong>
							<span>10:00~22:00</span>
						</li>
						<li id="holiday">
							<strong>휴무일</strong>
							<span>매주 일요일</span>
						</li>
						<li id="homepage">
							<strong>홈페이지</strong>
<!-- 									<a href="javascript:;" onclick="javascript:window.open('http://playtime.co.kr/store/store_kor_view.php?idx=124&amp;page=24&amp;s_area=&amp;s_areadatil=&amp;s_keyword=', '_system')">http://playtime.co.kr/store/store_kor_view.php?idx=124&amp;page=24&amp;s_area=&amp;s_areadatil=&amp;s_keyword=</a>
 -->						
 						</li>
					</ul>
				</figcation>			
			</figure>
		</section>
	</div>
			
			
	
		</header>
	</div>


</body>
</html>