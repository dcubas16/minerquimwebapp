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
<style type="text/css">
body {
	position: relative;
}

.full-wrapper {
	width: 100%;
}

.full-wrapper img {
	width: 100%;
	display: inline;
}

#navbar-wrapper {
	margin-top: 150px;
}

#navbar-wrapper.affix {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 10;
	margin-top: 0px;
	background-color: aqua;
}

#navbar-wrapper.affix>#nav {
	background-color: aqua;
}

#top-link {
	display: none;
	position: fixed;
	right: 40px;
	bottom: 2px;
	color: #000;
	font-weight: bold;
	text-decoration: none;
	border: 1px solid #CCC;
	background: #FFF;
	padding: 10px;
	opacity: 0.8
}
</style>
</head>
<!-- NAVBAR
================================================== -->
<body>
	<header class="full-wrapper" style="padding: 0 15px;">
		<div class="row">
			<div class="col-md-12">
				<div class="full-width hero-image">
					<img class="full-width"
						src="http://www.wired.com/wiredenterprise/wp-content/uploads/2013/07/ff_googleinfrastructure_large.jpg"
						style="height: 200px;" />
				</div>
				<!-- full-width hero-image -->
			</div>
			<!-- col-md-12 -->
		</div>
		<!-- row -->
	</header>
	<div id="navbar-wrapper" class="navbar-wrapper"
		style="padding: 0 15px;">
		<div id="nav" class="navbar navbar-default" role="banner"
			style="margin-bottom: 0px;">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target=".bs-navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="home" class="navbar-brand">Portfolio Name</a>
				</div>
				<!-- navbar-header -->
				<nav class="collapse navbar-collapse bs-navbar-collapse"
					role="navigation">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#home">Home</a></li>
						<li><a href="#resume">Resume</a></li>
						<li><a href="#portfolio">Portfolio</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</nav>
			</div>
			<!-- container -->
		</div>
		<!-- navbar -->
	</div>
	<!-- navbar-wrapper -->
	<div id="mainContent" style="height: 3000px;">
		<p>add space for scroll.</p>
	</div>
	<a href="#top" id="top-link">Back to Top</a>
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
		    min: 1,
		    fadeSpeed: 100
		  }, settings);
		  return this.each(function() {
		    //listen for scroll
		    var el = jQuery(this);
		    el.hide(); //in case the user forgot
		    jQuery(window).scroll(function() {
		      if(jQuery(window).scrollTop() >= settings.min)
		      {
		        el.fadeIn(settings.fadeSpeed);
		      }
		      else
		      {
		        el.fadeOut(settings.fadeSpeed);
		      }
		    });
		  });
		};

		//usage w/ smoothscroll
		jQuery(document).ready(function() {
		  //set the link
		  jQuery('#top-link').topLink({
		    min: 500,
		    fadeSpeed: 100
		  });
		  //smoothscroll
		  jQuery('#top-link').click(function(r) {    
		    jQuery("html, body").animate({ scrollTop: 0 }, 300);
		  });
		});
</script>
<!-- http://jsfiddle.net/velcrobots/6qrQF/1/ -->
</html>
