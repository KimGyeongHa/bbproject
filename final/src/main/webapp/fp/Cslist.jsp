<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>고객센터 목록페이지지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

  <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@400;700&family=Roboto+Mono:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
  <link rel="stylesheet" href="css/jquery-ui.css" type="text/css">
  <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css"type="text/css" >
  <link rel="stylesheet" href="css/lightgallery.min.css"type="text/css" >    
  <link rel="stylesheet" href="css/bootstrap-datepicker.css"type="text/css" >
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css"type="text/css" >
  <link rel="stylesheet" href="css/swiper.css" type="text/css">
  <link rel="stylesheet" href="css/aos.css" type="text/css">

  <link rel="stylesheet" href="css/style.css"type="text/css" >
</head>
<body>

    <header class="site-navbar py-3" role="banner">

          <div class="col-6 col-xl-2" data-aos="fade-down">
            <h1 class="mb-0"><a href="main" class="text-white h2 mb-0">
     		</a></h1>
          </div>

      <div class="container-fluid">
        <div class="row align-items-center">

          <div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
            <nav class="site-navigation position-relative text-right text-lg-center" role="navigation">

              <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block" >
          	 <img src="images/AHDD2.jpg" alt="" width="550px" height="300px" />
                <li class="active"><a href="main">Home</a></li>
                <li class="has-children">
                  <a href="single.html">Season</a>
                  <ul class="dropdown">
                    <li><a href="spring">Spring</a></li>
                    <li><a href="summer">Summer</a></li>
                    <li><a href="fall">Fall</a></li>
                    <li><a href="winter">Winter</a></li>
                    <li><a href="recommended">Recommended Travel</a></li>
                    <li><a href="best10">Best10</a></li>
                  </ul>
                </li>
                <li><a href="services.html">Services</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
              </ul>
            </nav>
          </div>
	      <div class="col-6 col-xl-2" data-aos="fade-down">
	      <h2><c:url value="${logout }"></c:url></h2>	
		
			<sec:authorize access="isAuthenticated()">
			<form action="<c:url value='/Logout' />" method="post">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
			<input class="btn btn-outline-white py-2 px-4" type="submit" value="LOGOUT" />	
			</form>
		</sec:authorize>
		  </div>	
          <div class="col-6 col-xl-2 text-left" data-aos="fade-down">
            <div class="d-none d-xl-inline-block">
              <ul class="site-menu js-clone-nav ml-auto list-unstyled d-flex text-center mb-0" data-class="social">
                <li>
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                </li>
                <li>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                </li>
                <li>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                </li>
                <li>
                  <a href="#" class="pl-3 pr-3"><span class="icon-youtube-play"></span></a>
                </li>
              </ul>
            </div>

            <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

          </div>

        </div>
      </div>
      
    </header>

	<div class="container">
		<div class="site-section aos-init aos-animate" data-aos = "fade">
			<div class= "container-fluid">
				<div class="row justify-content-center">
					<div class="col-md-7" >
						<div class="row mb-5">
							<div class="col-12">
							
								<table class="table text-center">
									<tr style="color: white;">
										<td colspan="5"><a href="CsinsertForm">글쓰기</a></td>
									</tr>		
									<tr style="color: white;">
										<th>번호</th>
										<th>닉네임</th>
										<th>제목</th>
										<th>작성일시</th>
									</tr>
								<c:forEach var="dto" items="${list}">
									<tr style="color: white;">
										<td>${dto.csno}</td>
										<td>${dto1.nickname}</td>
										<td><a href="Csdetail?csno=${dto.csno}">${dto.cstitle}</a></td>
										<td>${dto.csrepdate}</td>
									</tr>
								</c:forEach>
									<tr style="color: white;">
										<td colspan="5"><c:if test="${prev}">
											<a href="Cslist?currentPageNo=${currentPageNo-5 }"><button>[이전]</button></a>
											</c:if> <c:forEach var="no" begin="${startpageNo}" end="${endpageNo }">
											<a href="Cslist?currentPageNo=${no}"><button>${no}</button></a>
											</c:forEach> <c:if test="${next}">
											<a href="Cslist?currentPageNo=${currentPageNo+5 }"><button>[다음]</button></a>
										</c:if></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
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
    $(document).ready(function(){
      $('#lightgallery').lightGallery();
    });
  </script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

</body>
</html>