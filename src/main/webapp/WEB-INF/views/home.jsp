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
			style="padding-top: 0px; height: 550px; margin-bottom: 0px;">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			</ol>
			<div class="carousel-inner" style="height: 550px;">
				<div class="item active" style="height: 550px;">
					<img src="resources/images/mining_21.jpg" alt="First slide"
						style="height: 550px;">

				</div>
				<div class="item" style="height: 550px;">
					<img src="resources/images/leather_2.jpg" alt="Second slide"
						style="height: 550px;">
				</div>
				<div class="item" style="height: 550px;">
					<img src="resources/images/human_resource_3.jpg" alt="Third slide"
						style="height: 550px;">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"
				style="padding-top: 0px; height: 550px;"><span
				class="glyphicon glyphicon-chevron-left" style=""></span></a> <a
				class="right carousel-control" href="#myCarousel" data-slide="next"
				style="padding-top: 0px; height: 550px;"><span
				class="glyphicon glyphicon-chevron-right" style=""></span></a>
			<div class="container-fluid"
				style="position: absolute; top: 350; text-align: center; width: 100%; font-family: Montserrat, sans-serif;">
				<div class="homepage-title">Proveemos insumos químicos de
					calidad</div>
			</div>
			<div class="container-fluid"
				style="position: absolute; top: 418; text-align: center; width: 100%; font-family: Montserrat, sans-serif;">
				<div class="homepage-subtitle">para la industria minera y del
					cuero</div>
			</div>
			<div class="container-fluid"
				style="position: absolute; top: 450; text-align: center; width: 100%; font-family: Montserrat, sans-serif;">
				<div class="homepage-subtitle">acompañado de un adecuado
					servicio de asesoramiento técnico</div>
			</div>
		</div>
		<div class="row" style="margin-left: 0px; margin-right: 0px;">
			<div class="col-md-12">
				<div class="row" style="padding-top: 80px;">
					<div class="col-md-1"></div>
					<div class="col-md-10">
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
								<a href="#" class="thumbnail"><img
									class="featurette-image img-responsive"
									src="resources/images/oro.jpg" alt="500x500"></a>

							</div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row">
					<hr class="featurette-divider">
					<div class="col-md-1"></div>
					<div class="col-md-10">

						<div class="row featurette">
							<div class="col-md-5">
								<a href="#" class="thumbnail"><img
									class="featurette-image img-responsive"
									src="resources/images/leather_13.jpg" alt="500x500"></a>

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
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row" style="padding-bottom: 80px;">
					<hr class="featurette-divider">
					<div class="col-md-1"></div>
					<div class="col-md-10">
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
								<a href="#" class="thumbnail"><img
									class="featurette-image img-responsive"
									src="resources/images/coaching-ejecutivos-top.jpg"
									alt="500x500"></a>


							</div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>

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