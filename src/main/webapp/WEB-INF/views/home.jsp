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
<body class="body-style">
	<c:import url="../views/jspf/header.jsp" />
	<!-- Carousel
    ================================================== -->

	<div id="main-content">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			style="padding-top: 0px; height: 500px; margin-bottom: 30px;">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			</ol>
			<div class="carousel-inner" style="height: 500px;">
				<div class="item active" style="height: 500px;">
					<img src="resources/images/Proveedor-quimicos-para-Mineria.jpg"
						alt="First slide" style="height: 500px;">
				</div>
				<div class="item" style="height: 500px;">
					<img src="resources/images/leather_2.jpg" alt="Second slide"
						style="height: 500px;">
				</div>
				<div class="item" style="height: 500px;">
					<img src="resources/images/ejecutivos varios7.jpg"
						alt="Third slide">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"
				style="padding-top: 0px; height: 500px;"><span
				class="glyphicon glyphicon-chevron-left" style=""></span></a> <a
				class="right carousel-control" href="#myCarousel" data-slide="next"
				style="padding-top: 0px; height: 500px;"><span
				class="glyphicon glyphicon-chevron-right" style=""></span></a>
		</div>
		<!-- /.carousel -->

		<!-- Marketing messaging and featurettes
    ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->
		<div class="container marketing">
			<!-- /.row -->
			<!-- START THE FEATURETTES -->
			<hr class="featurette-divider">
			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading">
						<spring:message code="label.miningActivityTitle" />
						<span class="text-muted"><spring:message
								code="label.miningActivitySecondTitle" /></span>
					</h2>
					<p class="lead">
						<spring:message code="label.miningActivityDescription" />
					</p>
				</div>
				<div class="col-md-5">
					<img class="featurette-image img-responsive"
						src="resources/images/oro.jpg" alt="500x500">
				</div>
			</div>
			<hr class="featurette-divider">
			<div class="row featurette">
				<div class="col-md-5">
					<img class="featurette-image img-responsive"
						src="resources/images/12-10-10-SHINOLA-HORWEEN-11510.jpg"
						alt="500x500">
				</div>
				<div class="col-md-7">
					<h2 class="featurette-heading">
						<spring:message code="label.leatherIndustryActivityTitle" />
						<span class="text-muted"><spring:message
								code="label.leatherIndustryActivitySecondTitle" /></span>
					</h2>
					<p class="lead">
						<spring:message code="label.leatherIndustryActivityDescription" />
					</p>
				</div>
			</div>
			<hr class="featurette-divider">
			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading">
						<spring:message code="label.servicesActivityTitle" />
						<span class="text-muted"><spring:message
								code="label.servicesActivitySecondTitle" /></span>
					</h2>
					<p class="lead">
						<spring:message code="label.servicesActivityDescription" />
					</p>
				</div>
				<div class="col-md-5">
					<img class="featurette-image img-responsive"
						src="resources/images/coaching-ejecutivos-top.jpg" alt="500x500">
				</div>
			</div>
			<!-- /END THE FEATURETTES -->
			<!-- FOOTER -->



		</div>
	</div>

	<c:import url="../views/jspf/footer.jsp" />
</body>
<script>
	$(function() {
		var viewModel = {
			mainMenuSelected : ko.observable(1),
		};

		ko.applyBindings(viewModel, $('body')[0]);
	});
</script>
</html>