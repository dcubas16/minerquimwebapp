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
<body class="body-style"="">
	<c:import url="../views/jspf/header.jsp" />
	<div class="container" style="">
		<div class="row" style="height: 100%;">
			<div class="col-md-1"></div>
			<div class="col-md-10" style="padding-top: 25px;">
				<div class="row">
					<div class="col-md-6">
						<h3>Envianos un Mensaje</h3>
						<form id="sendEmailMessageForm" class="form-horizontal"
							action="Mail/sendMail.htm" method="post">
							<div class="form-group">
								<div class="col-md-8">
									<input type="text" class="form-control input-sm"
										placeholder="Nombre" data-bv-field="names" name="names">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-8">
									<input type="email" class="form-control input-sm"
										placeholder="Email" data-bv-field="email" name="email">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-8">
									<input type="tel" class="form-control input-sm"
										placeholder="Telefono" >
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12">
									<textarea class="form-control" rows="3" placeholder="Mensaje"
										style="height: 208px;" data-bv-field="emailMessage" name="emailMessage"></textarea>
								</div>
							</div>
							<div class="form-group" style="padding-right: 15px;">
								<div class="col-md-8"></div>
								<div class="col-md-2">
									<button type="button" class="btn btn-primary">Limpiar</button>
								</div>
								<div class="col-md-2">
									<button type="submit" class="btn btn-primary">Enviar</button>
								</div>
							</div>
						</form>
					</div>

					<div class="col-md-6">
						<h3>Nuestra Dirección</h3>
						<div id="page">
							<script
								src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
							<script>
								function initialize() {
									var map_canvas = document
											.getElementById('map_canvas');
									var map_options = {
										center : new google.maps.LatLng(
												-12.120869, -77.026988),
										zoom : 60,
										mapTypeId : google.maps.MapTypeId.ROADMAP
									}
									var map = new google.maps.Map(map_canvas,
											map_options)
								}
								google.maps.event.addDomListener(window,
										'load', initialize);
							</script>
							<div id="map_canvas"></div>
							<br>
							<ul>
								<li>Calle - Distrito</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
			<!-- 			<div class="col-md-1"></div> -->
		</div>
		<!-- Carousel
    ================================================== -->

	</div>
	<c:import url="../views/jspf/footer.jsp" />

</body>
<script>
	$(function() {
		var viewModel = {
			mainMenuSelected : ko.observable(5),
		};

		ko.applyBindings(viewModel, $('body')[0]);
	});

	$(function() {
		$('#sendEmailMessageForm').bootstrapValidator({
			message : 'This value is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			submitHandler : function(validator, form, submitButton) {
				// Do nothing
			},
			fields : {
				names : {
					validators : {
						notEmpty : {
							message : 'The name is required'
						}
					}
				},
				email : {
					validators : {
						notEmpty : {
							message : 'The email is required'
						}
					}
				},
				emailMessage : {
					validators : {
						notEmpty : {
							message : 'The email message is required'
						}
					}
				},
			}
		});
	});
</script>
</html>