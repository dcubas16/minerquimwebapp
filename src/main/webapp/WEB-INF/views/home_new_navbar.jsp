<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	response.setContentType("text/html");
	response.setCharacterEncoding("UTF-8");
%>
<html lang="es_PE">
<head>
<%-- <c:import url="../views/jspf/resources.jsp" /> --%>

<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/css/docs.min.css" rel="stylesheet">
<link
	href="resources/bootstrapvalidator-dist-0.4.5/dist/css/bootstrapValidator.min.css"
	rel="stylesheet">

<link href="resources/new-navbar/font-awesome.min.css" rel="stylesheet">
<link href="resources/new-navbar/style.css" rel="stylesheet">

<link href="resources/css/carousel.css" rel="stylesheet">
<link
	href="resources/bootstrapformhelpers/css/bootstrap-formhelpers.min.css"
	rel="stylesheet" media="screen">
<link href="resources/css/minerquimwebappstyles.css" rel="stylesheet">

<script src="resources/js/jquery-1.11.0/jquery-1.11.0.min.js"></script>
<script src="resources/bootstrap-3.1.1/js/bootstrap.min.js"></script>
<script src="resources/bootstrapformhelpers/js/bootstrap-formhelpers.js"></script>
<script src="resources/js/docs.min.js"></script>
<script src='resources/knockout/knockout-3.1.0.js'></script>
<script
	src='resources/bootstrapvalidator-dist-0.4.5/dist/js/bootstrapValidator.min.js'></script>
<script src='resources/new-navbar/custom.js'></script>
<link href="http://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet" type="text/css">
</head>
<!-- NAVBAR
================================================== -->
<body>
	<header>
		<div
			class="navbar navbar-default navbar-fixed-top minerquim-navbar-style">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="home.htm"> <img class="logo-image-style"
						src="resources/images/minerquim-logo.png" height="100" width="200">
						<img class="tiny-logo-image-style"
						src="resources/images/minerquim-tiny-logo.fw.png" height="40"
						width="30">
					</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav nav-minerquim-style header-menu-style">
						<li><a href="index.html"><strong>INICIO</strong></a></li>
						<li><a href="services.html">NOSOTROS</a></li>
						<li><a href="portfolio.html">PRODUCTOS</a></li>
						<li><a href="pricing.html">SERVICIOS</a></li>
						<li><a href="contact.html">CONTACTANOS</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right language-buttom-style">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><span
								class="glyphicon bfh-flag-ES language-flag-style"></span>Español
								<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#"><span
										class="glyphicon bfh-flag-US language-flag-style"></span>English
								</a></li>
							</ul>
						</li>
					</ul>
				</div>

			</div>
		</div>
	</header>
	<section id="home" class="head-main-img">

		<div class="container">
			<div class="row text-center pad-row">
				<div class="col-md-12">
					<h1>OUR SERVICES</h1>
				</div>
			</div>
		</div>
		<div id="mainContent" style="height: 3000px;">
			<p>add space for scroll.</p>
		</div>
	</section>
	<section id="footer-sec">

		<div class="container">
			<div class="row  pad-bottom">
				<div class="col-md-4">
					<h4>
						<strong>ABOUT COMPANY</strong>
					</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nec nisl odio. Mauris vehicula at nunc id posuere. Lorem
						ipsum dolor sit amet, consectetur adipiscing elit.</p>
					<a href="#">read more</a>
				</div>
				<div class="col-md-4">
					<h4>
						<strong>SOCIAL LINKS</strong>
					</h4>
					<p>
						<a href="#"><i class="fa fa-facebook-square fa-3x"></i></a> <a
							href="#"><i class="fa fa-twitter-square fa-3x"></i></a> <a
							href="#"><i class="fa fa-linkedin-square fa-3x"></i></a> <a
							href="#"><i class="fa fa-google-plus-square fa-3x"></i></a>
					</p>
				</div>
				<div class="col-md-4">
					<h4>
						<strong>OUR LOCATION</strong>
					</h4>
					<p>
						234/JK , The Wondre Land, <br> Newyork Street Junction <br>
						JUST USA -10909094
					</p>
					<a href="#" class="btn btn-primary">SEND QUERY</a>
				</div>
			</div>
		</div>
	</section>
	<!-- 	<a href="#top" id="top-link">Back to Top</a> -->
	<a href="#top" id="top-link" class="btn btn-primary btn-circle btn-lg"
		href="#" role="button"> <span class="glyphicon glyphicon-arrow-up"></span></a>
</body>
<script type="text/javascript">
	$('#navbar-wrapper').affix({
		offset : {
			top : function() {
				return $('.hero-image').height();
			}
		}
	});

	jQuery.fn.topLink = function(settings) {
		settings = jQuery.extend({
			min : 1,
			fadeSpeed : 100
		}, settings);
		return this.each(function() {
			//listen for scroll
			var el = jQuery(this);
			el.hide(); //in case the user forgot
			jQuery(window).scroll(function() {
				if (jQuery(window).scrollTop() >= settings.min) {
					el.fadeIn(settings.fadeSpeed);
				} else {
					el.fadeOut(settings.fadeSpeed);
				}
			});
		});
	};

	//usage w/ smoothscroll
	jQuery(document).ready(function() {
		//set the link
		jQuery('#top-link').topLink({
			min : 500,
			fadeSpeed : 100
		});
		//smoothscroll
		jQuery('#top-link').click(function(r) {
			jQuery("html, body").animate({
				scrollTop : 0
			}, 300);
		});
	});
</script>
<!-- http://jsfiddle.net/velcrobots/6qrQF/1/ -->
</html>
