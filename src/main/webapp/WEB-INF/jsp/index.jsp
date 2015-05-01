<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>
<style>
<!-- /*
Fade content bs-carousel with hero headers
Code snippet by maridlcrmn (Follow me on Twitter @maridlcrmn) for Bootsnipp.com
Image credits: unsplash.com
*/

/********************************/
/*       Fade Bs-carousel       */
/********************************/
.fade-carousel {
	position: relative;
	height: 50vh;
}

.fade-carousel .carousel-inner .item {
	height: 50vh;
}

.fade-carousel .carousel-indicators>li {
	margin: 0 2px;
	background-color: #f39c12;
	border-color: #f39c12;
	opacity: .7;
}

.fade-carousel .carousel-indicators>li.active {
	width: 10px;
	height: 10px;
	opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
.hero {
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: 3;
	color: #fff;
	text-align: center;
	text-transform: uppercase;
	text-shadow: 1px 1px 0 rgba(0, 0, 0, .75);
	-webkit-transform: translate3d(-50%, -50%, 0);
	-moz-transform: translate3d(-50%, -50%, 0);
	-ms-transform: translate3d(-50%, -50%, 0);
	-o-transform: translate3d(-50%, -50%, 0);
	transform: translate3d(-50%, -50%, 0);
}

.hero h1 {
	font-size: 6em;
	font-weight: bold;
	margin: 0;
	padding: 0;
}

.fade-carousel .carousel-inner .item .hero {
	opacity: 0;
	-webkit-transition: 2s all ease-in-out .1s;
	-moz-transition: 2s all ease-in-out .1s;
	-ms-transition: 2s all ease-in-out .1s;
	-o-transition: 2s all ease-in-out .1s;
	transition: 2s all ease-in-out .1s;
}

.fade-carousel .carousel-inner .item.active .hero {
	opacity: 1;
	-webkit-transition: 2s all ease-in-out .1s;
	-moz-transition: 2s all ease-in-out .1s;
	-ms-transition: 2s all ease-in-out .1s;
	-o-transition: 2s all ease-in-out .1s;
	transition: 2s all ease-in-out .1s;
}

/********************************/
/*            Overlay           */
/********************************/
.overlay {
	position: absolute;
	width: 100%;
	height: 100%;
	z-index: 2;
	background-color: #080d15;
	opacity: .7;
}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {
	padding: 10px 40px;
}

.btn.btn-hero, .btn.btn-hero:hover, .btn.btn-hero:focus {
	color: #f5f5f5;
	background-color: #1abc9c;
	border-color: #1abc9c;
	outline: none;
	margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, .fade-carousel .slides .slide-2,
	.fade-carousel .slides .slide-3 {
	height: 50vh;
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
}

.fade-carousel .slides .slide-1 {
	background-image:
		url(https://ununsplash.imgix.net/photo-1416339134316-0e91dc9ded92?q=75&fm=jpg&s=883a422e10fc4149893984019f63c818);
}

.fade-carousel .slides .slide-2 {
	background-image:
		url(https://ununsplash.imgix.net/photo-1416339684178-3a239570f315?q=75&fm=jpg&s=c39d9a3bf66d6566b9608a9f1f3765af);
}

.fade-carousel .slides .slide-3 {
	background-image:
		url(https://ununsplash.imgix.net/photo-1416339276121-ba1dfa199912?q=75&fm=jpg&s=9bf9f2ef5be5cb5eee5255e7765cb327);
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px) {
	.hero {
		width: 980px;
	}
}

@media screen and (max-width: 640px) {
	.hero h1 {
		font-size: 4em;
	}
}
-->
</style>
<div class="carousel fade-carousel slide" data-ride="carousel"
	data-interval="4000" id="bs-carousel">
	<!-- Overlay -->
	<div class="overlay"></div>

	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
		<li data-target="#bs-carousel" data-slide-to="1"></li>
		<li data-target="#bs-carousel" data-slide-to="2"></li>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner">
		<div class="item slides active">
			<div class="slide-1"></div>
			<div class="hero">
				<hgroup>
					<h1>We are creative</h1>
					<h3>Get start your Career</h3>
				</hgroup>
				<button class="btn btn-hero btn-lg" role="button">See all
					features</button>
			</div>
		</div>
		<div class="item slides">
			<div class="slide-2"></div>
			<div class="hero">
				<hgroup>
					<h1>We are smart</h1>
					<h3>Find Best Job Collage</h3>
				</hgroup>
				<button class="btn btn-hero btn-lg" role="button">See all
					features</button>
			</div>
		</div>
		<div class="item slides">
			<div class="slide-3"></div>
			<div class="hero">
				<hgroup>
					<h1>We are amazing</h1>
					<h3>Get start your next awesome project</h3>
				</hgroup>
				<button class="btn btn-hero btn-lg" role="button">See all
					features</button>
			</div>
		</div>
	</div>
</div>
<!-- /.carousel -->
<div class="page-header">
	<h1>Latest Jobs</h1>
</div>
<div class="container">
	<div class="row">
		<div class="panel panel-default widget">
			<div class="panel-heading">
				<h3 class="panel-title">Recent Jobs</h3>
			</div>
			<div class="panel-body">
				<c:forEach items="${jobs}" var="job">
					<ul class="list-group">
						<li class="list-group-item">
							<div class="row">
								<div class="col-xs-2 col-md-1">
									<img src="http://placehold.it/80"
										class="img-circle img-responsive" alt="" />
								</div>
								<div class="col-xs-10 col-md-11">
									<div>
										<a
											href="http://www.jquery2dotnet.com/2013/10/google-style-login-page-desing-usign.html">
											<c:out value="${job.title}" />
										</a>
										<div class="mic-info">
											By: <a href="#">Bhaumik Patel</a> on 2 Aug 2013
										</div>
									</div>
									<div class="comment-text">
										<c:out value="${job.description}" />
									</div>
									<div class="action">
										<a href='<spring:url value="/jobdetail/${job.id}.html"/>'>
											<button type="button" class="btn btn-primary btn-xs"
												title="View Detail">
												<span class="glyphicon glyphicon-pencil"></span> View
											</button>
										</a> <a href='<spring:url value="/apply/${job.id}.html"/>'>
											<button type="button" class="btn btn-success btn-xs"
												title="Apply">
												<span class="glyphicon glyphicon-ok"></span>Apply
											</button>
										</a>
									</div>
								</div>
							</div>
						</li>
				</c:forEach>
				</ul>
				<a href="#" class="btn btn-primary btn-sm btn-block" role="button"><span
					class="glyphicon glyphicon-refresh"></span> More</a>
			</div>
		</div>
	</div>
</div>
