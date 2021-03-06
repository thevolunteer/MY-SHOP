<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Buy Cheap Fashion Clothes Online</title>

<!-- Bootstrap core CSS-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css" />

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.css" rel="stylesheet">

<!-- Page level plugin CSS-->
<link
	href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/main-admin.css" rel="stylesheet">
</head>
<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<!-- <a class="navbar-brand mr-1" href="#">Start Bootstrap</a> -->

		<a class="navbar-brand" href="#"> <img src="/img/logo-myshop.JPG"
			class="img-logo">
		</a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive"></div>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link" href="/home">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="javascript:AlertIt();" id="login">Login</a></li>
			<!-- <li class="nav-item"><a class="nav-link" href="#">Register</a></li> -->
			<li class="nav-item">
				<form
					class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for..." aria-label="Search"
							aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fas fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-shopping-cart fa-lg"></i></a></li>

		</ul>
		</div>

		<!-- Navbar Search -->


		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">

			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a href="#editAccountModal" class="dropdown-item"
						data-toggle="modal">Account</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal">Logout</a>
				</div></li>
		</ul>

	</nav>

	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="#"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>
			<c:forEach items="${productgrps}" var="productgrps">
				<li class="nav-item"><a class="nav-link" href="#"> <span>${productgrps.prodgrpname}</span></a></li>
			</c:forEach>

		</ul>

		<div id="content-wrapper">

			<div class="container-fluid">
				<!-- Dcarousel -->
				<div class="card mb-3">

					<div class="card-body">

						<div id="carouselExampleIndicators" class="carousel slide my-4"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active">
									<img class="d-block img-fluid" src="img/image1.jpg"
										alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid" src="img/image2.jpg"
										alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid" src="img/image3.jpg"
										alt="Third slide">
								</div>
							</div>
							<a class="carousel-control-prev"
								href="#carouselExampleIndicators" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleIndicators" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<div class="row">
						<div class=""></div>
						<c:forEach items="${product}" var="product">
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<div class="card-body">
										<h4 class="card-title">
											<a href="/product/${product.prodid}">${product.name}</a>
										</h4>
										<h5>${product.price} đồng</h5>
										<h5>${product.point} điểm</h5>

									</div>

								</div>
							</div>
						</c:forEach>
					</div>
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
	</div>
	<!-- /.container-fluid -->
	<!-- Edit Account -->
	<div id="editAccountModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">Account</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>

					<div class="modal-body">
						<div class="form-group">
							<label>ID</label> <input type="text" class="form-control" value="${accountlogin.accountid}"
								disabled>
						</div>
						<div class="form-group">
							<label>User Name</label> <input type="text" class="form-control"
								  value="${accountlogin.userrname}" >
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password"
								class="form-control"  value="${accountlogin.password}" required>
						</div>
						<div class="form-group">
							<label>Confirm Password</label> <input type="password"
								class="form-control" value="${accountlogin.password}" required>
						</div>
						<div class="form-group">
							<label>Full Name</label> <input type="text" class="form-control"
							value="${accountlogin.name}"	required>
						</div>
						<div class="form-group">
							<label>Address</label> <input type="text" class="form-control"
								value="${accountlogin.address}" required>
						</div>
						<div class="form-group">
							<label>Email</label> <input type="email" class="form-control"
								 value="${accountlogin.email}" required>
						</div>
						<div class="form-group">
							<label>Cell phone</label> <input type="text" class="form-control"
							value="${accountlogin.cellphone}"	required>
						</div>

					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit" class="btn btn-info"
							value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Sticky Footer -->
	<footer class="sticky-footer">
		<div class="container my-auto">
			<div class="copyright text-center my-auto">
				<span>Copyright Â© My Shop-LeThaiDuy, All rights reserved</span>
			</div>
		</div>
	</footer>

	</div>
	<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>



	<!-- Custom scripts for all pages-->
	<script src="js/myshop-admin.js"></script>

	<!--  -->
	<script>
		$(document).ready(function() {
			$('#dataTable').DataTable();
			
	</script>
	<script type="text/javascript">
		function AlertIt() {
		var answer = confirm ("This function is for admin.Please click on OK to continue.")
		if (answer)
		window.location="/login-admin";
		}
	</script>

</body>

</html>