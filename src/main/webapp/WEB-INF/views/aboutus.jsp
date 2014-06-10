<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en">
<head>
<c:import url="../views/jspf/resources.jsp" />
</head>
<!-- NAVBAR
================================================== -->
<body class="body-style">
	<c:import url="../views/jspf/header.jsp" />

	<div class="container marketing"
		style="padding-top: 0px; margin-top: 80px;">
		<!-- START THE FEATURETTES -->

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading" style="margin-top: 20px;">
					Minerquim<span class="text-muted"></span>
				</h2>
				<p class="lead">Somos una empresa dedicada a la importación,
					venta y asesoramiento técnico de insumos químicos para las
					industrias mineras y del cuero</p>
			</div>
			<div class="col-md-5">
				<a href="#" class="thumbnail"> <img
					src="resources/images/oro.jpg">
				</a>
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-5">
				<a href="#" class="thumbnail"> <img
					 src="resources/images/12-10-10-SHINOLA-HORWEEN-11510.jpg">
				</a>

			</div>
			<div class="col-md-7">
				<h2 class="featurette-heading" style="margin-top: 20px;">
					Misión<span class="text-muted"></span>
				</h2>
				<p class="lead">Brindar a nuestros Clientes insumos químicos y
					servicios que ayuden a mejorar la calidad de sus productos, siempre
					teniendo en cuenta la puntualidad y calidad</p>
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading" style="margin-top: 20px;">
					Visión<span class="text-muted"></span>
				</h2>
				<p class="lead">Ser la empresa lider en el mercado nacional y
					regional en la venta de insumos químicos acompañados de servicios
					de alta calidad para las industria mineras y del cuero</p>
			</div>
			<div class="col-md-5">
				<a href="#" class="thumbnail"> <img
					src="resources/images/coaching-ejecutivos-top.jpg">
				</a>
			</div>
		</div>
		<!-- /END THE FEATURETTES -->
		<!-- FOOTER -->

	</div>
	<c:import url="../views/jspf/footer.jsp" />
</body>
<script>
	$(function() {
		var viewModel = {
			mainMenuSelected : ko.observable(2),
		};

		ko.applyBindings(viewModel, $('body')[0]);
	});
</script>
</html>