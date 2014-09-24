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
<c:import url="../views/jspf/resources.jsp" />

</head>
<!-- NAVBAR
================================================== -->
<body>
	<header class="full-wrapper" style="padding: 0 15px;">
		<div class="row hero-image"
			style="padding-top: 10px; height: 100px; background-image: url(resources/images/headerBackGround_.jpg); background-repeat: repeat-x;">
		</div>

		<div id="navbar-wrapper" class="navbar-wrapper"
			style="padding: 0 15px;">
			<div id="nav" class="navbar navbar-default navbar-greypower"
				role="banner" style="margin-bottom: 0px;">
				<div class="container">
					<div class="navbar-header">
						<button class="navbar-toggle" type="button" data-toggle="collapse"
							data-target=".bs-navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a href="home.htm"> <img class="logo-image-style"
							src="resources/images/minerquim-logo.png" height="100"
							width="200">
						</a>
					</div>
					<!-- navbar-header -->
					<nav class="collapse navbar-collapse bs-navbar-collapse"
						style="text-align: center;" role="navigation">
						<ul class="nav nav-pills">
							<li class="active"><a href="#home">INICIO</a></li>
							<li><a href="#resume">NOSOTROS</a></li>
							<li><a href="#portfolio">PRODUCTOS</a></li>
							<li><a href="#contact">SERVICIOS</a></li>
							<li><a href="#contact">CONTACTANOS</a></li>
						</ul>
						<ul class="nav navbar-right">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Español<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Ingles</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<!-- container -->
			</div>
			<!-- navbar -->
		</div>
	</header>

	<!-- navbar-wrapper -->
	<div id="mainContent" style="height: 3000px;">
		<p>add space for scroll.</p>
	</div>
	<!-- 	<a href="#top" id="top-link">Back to Top</a> -->
	<a href="#top" id="top-link" class="btn btn-primary btn-circle btn-lg"
		href="#" role="button"> <span class="glyphicon glyphicon-arrow-up"></span></a>

	<!-- 	<button id="top-link" type="button" class="btn btn-primary btn-circle btn-lg"><i class="glyphicon glyphicon-list"></i></button> -->
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
