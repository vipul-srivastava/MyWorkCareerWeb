<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.html"%>
			<section class="slider" id="home">
				<div class="container-fluid">
					<div class="row">

					    <div id="carouselHacked" class="carousel slide carousel-fade" data-ride="carousel">
							<div class="header-backup"></div>
					        <!-- Wrapper for slides -->
					        <div class="carousel-inner" role="listbox">
					            <div class="item active">
					            	<img src="img/CarrerWeb2_2.jpg" alt="">
					                <div class="carousel-caption">
				               			<h1></h1>
				               			<p></p>
				 
                      <
				               			<a href="Login_Signup.jsp"><h2>Login<br>Signup</h2> </a>
				               		
					                </div>
					            </div>
					            <div class="item">
					            	<img src="img/slide-one.jpg" alt="">
					                <div class="carousel-caption">
				               			<a href="Login_Signup.jsp"><h2>Login<br>Signup</h2></a>
					                </div>
					            </div>
					            <div class="item">
					            	<img src="img/slide-three.jpg" alt="">
					                <div class="carousel-caption">
				               		
				               			<p> </p>
				               			<a href="Login_Signup.jsp"><h2>Login<br>Signup</h2></a>
				               			
					                </div>
					            </div>
					            <div class="item">
					            	<img src="img/slide-four.jpg" alt="">
					                <div class="carousel-caption">
				               			
				               		<a href="Login_Signup.jsp"><h2>Login<br>Signup</h2></a>
					                </div>
					            </div>
					        </div>

					        <!-- Controls -->
					        <a class="left carousel-control" href="#carouselHacked" role="button" data-slide="prev">
					            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					            <span class="sr-only">Previous</span>
					        </a>
					        <a class="right carousel-control" href="#carouselHacked" role="button" data-slide="next">
					            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					            <span class="sr-only">Next</span>
					        </a>
					    </div>

					</div>
				</div>
			</section><!-- end of slider section -->


			<!-- about section -->
			<section class="about text-center" id="about">
				<div class="container">
					<div class="row">
						<h2>about us</h2>
						<h4>Career Web has been the industry's standard ever since the 2018s,</h4>

						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail clearfix">
								<div class="about-img">
									<img src="img/about1.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>C</h1>
									</div>

									<h3>Help in Finding college</h3>
									<p></p>
								</div>
							</div>
						</div>

						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail">
								<div class="about-img">
									<img class="img-responsive" src="img/material.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>C</h1>
									</div>

									<h3>Course material in one place</h3>
									<p></</p>
								</div>
							</div>
						</div>


						<div class="col-md-4 col-sm-6">
							<div class="single-about-detail">
								<div class="about-img">
									<img class="img-responsive" src="img/about2.jpg" alt="">
								</div>

								<div class="about-details">
									<div class="pentagon-text">
										<h1>C</h1>
									</div>

									<h3>Consultancy/advice</h3>
									<p></</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</section><!-- end of about section -->


			<!-- service section starts here -->

			<section class="service text-center" id="service">
				<div class="container">
					<div class="row">
						<h2>Our Team</h2>
						<h4></h4>

						<div class="col-md-3 col-sm-6">
							<div class="single-service">
								<div class="single-service-img">
									<div class="service-img">
										<img class="img-responsive" src="img/servic.png" alt="">
									</div>
								</div>
								<h3>Vipul</h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6">
							<div class="single-service">
								<div class="single-service-img">
									<div class="service-img">
										<img class="img-responsive" src="img/servie.png" alt="">
									</div>
								</div>
								<h3>Mustafa</h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6">
							<div class="single-service">
								<div class="single-service-img">
									<div class="service-img">
										<img class="img-responsive" src="img/servic.png" alt="">
									</div>
								</div>
								<h3>Tushar</h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6">
							<div class="single-service">
								<div class="single-service-img">
									<div class="service-img">
										<img class="img-responsive" src="img/service.png" alt="">
									</div>
								</div>
								<h3>Pappu</h3>
							</div>
						</div>
					</div>
				</div>
			</section><!-- end of service section -->
				<!-- map section -->
			<section class="api-map" id="contact">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12 map" id="map"></div>
					</div>
				</div>
			</section><!-- end of map section -->

			<!-- contact section starts here -->
			<section class="contact">
				<div class="container">
					<div class="row">
							<div class="contact-caption clearfix">
								<div class="contact-heading text-center">
									<h2>contact us</h2>
								</div>

								<div class="col-md-5 contact-info text-left">
									<h3>contact information</h3>
									<div class="info-detail">
										<ul><li><i class="fa fa-calendar"></i><span>Monday - Friday:</span> 9:30 AM to 6:30 PM</li></ul>
										<ul><li><i class="fa fa-map-marker"></i><span>Address:</span> IEC college of engineering and Technology</li></ul>
										<ul><li><i class="fa fa-phone"></i><span>Phone:</span> (01) 988685758</li></ul>
										<ul><li><i class="fa fa-fax"></i><span>Fax:</span> (01) 999-1234</li></ul>
										<ul><li><i class="fa fa-envelope"></i><span>Email:</span> carrerweb@iec.com</li></ul>
									</div>
								</div>


								<div class="col-md-6 col-md-offset-1 contact-form">
									<h3>leave us a message</h3>

									<form class="form">
										<input class="name" type="text" placeholder="Name">
										<input class="email" type="email" placeholder="Email">
										<input class="phone" type="text" placeholder="Phone No:">
										<textarea class="message" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
										<input class="submit-btn" type="submit" value="SUBMIT">
									</form>
								</div>

							</div>
					</div>
				</div>
			</section><!-- end of contact section -->
			<%@ include file="footer.html"%>
			

</body>
</html>