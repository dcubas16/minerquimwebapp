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
			style="padding-top: 10px; height: 110px; background-image: url(resources/images/headerBackGround_.jpg); background-repeat: repeat-x;">
		</div>
		<nav id="navbar-wrapper"
			class="navbar navbar-default minerqauim-navbar-wrapper navbar-greypower"
			role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="home.htm"> <img class="logo-image-style"
						src="resources/images/minerquim-logo.png" height="100" width="200">
					</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse">
					<ul class="nav-pills nav navbar-nav navbar-items">
						<li class="active"><a href="#">INICIO</a></li>
						<li><a href="#">NOSOTROS</a></li>
						<li><a href="#">PRODUCTOS</a></li>
						<li><a href="#">SERVICIOS</a></li>
						<li><a href="#">CONTACTANOS</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<button type="button"
							class="btn btn-default btn-xs dropdown-toggle button-dropdown-black "
							data-toggle="dropdown"
							style="padding-top: 4px; padding-bottom: 4px; padding-right: 8px; font-size: 11px;">
							<span class="glyphicon bfh-flag-ES"></span>
							<spring:message code="label.spanish" />
							&nbsp;<span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-menu-minerquim-style"
							role="menu">
							<li><a href="#"><span class="glyphicon bfh-flag-US"></span>
									<spring:message code="label.english" />&nbsp;</a></li>
						</ul>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
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
