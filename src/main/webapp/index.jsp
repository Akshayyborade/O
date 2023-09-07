<%@page import="com.db.Hibernetconfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<!-- style css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets --> 
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">


<%@include file="componant/allcss.jsp"%>
</head>
<body>
	<%@ include file="componant/navbar.jsp"%>
<!--<% Object str = Hibernetconfig.getSessionFactory();
out.println(str);%>  -->
	<div class="banner_section layout_padding">
		<div id="main_slider" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6 padding_0">
								<div class="bg_1">
									<div class="padding_left0">
										<h1 class="best_text">
											Booking<br> Train Tickets <br> Made Easy
										</h1>
										<p class="many_text">There are many variations of passages
											of Lorem Ipsum available, but the majority</p>
										<div class="read_bt">
											<a href="#">Read More</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 padding_0">
								<div class="image_1">
									<img src="images/train3.png">
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		</div>
		 <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- javascript --> 
    <script src="js/owl.carousel.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>  
</body>
</html>
