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
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">



<!-- Custom styles for this template-->
<link href="css/main-admin.css" rel="stylesheet">
<link href="css/detail-product.css" rel="stylesheet">

</head>

<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<!-- <a class="navbar-brand mr-1" href="#">Start Bootstrap</a> -->

		<a class="navbar-brand" href="#"> <img src="img/logo-myshop.JPG"
			class="img-logo">
		</a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive"></div>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">News</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Login</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Register</a></li>
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
			<c:forEach items="${productgrp}" var="productgrps">
				<li class="nav-item"><a class="nav-link" href="#"> <span>${productgrps.prodgrpname}</span></a></li>
			</c:forEach>
		</ul>

		<div id="content-wrapper">

			<div class="container-fluid">
				<!-- start detail product -->
				<div class="container">
					<div class="card">
						<div class="container-fliud">
							<div class="wrapper row">
								<div class="preview col-md-6">

									<div class="preview-pic tab-content">
										<div class="tab-pane active" id="pic-1">
											<img src="img/aothun.jpg" />
										</div>
										<div class="tab-pane " id="pic-2">
											<img src="img/aothun1.jpg" />
										</div>
										<div class="tab-pane" id="pic-3">
											<img src="img/aothun2.jpg" />
										</div>
										<div class="tab-pane" id="pic-4">
											<img src="img/aothun3.jpg" />
										</div>

									</div>
									<ul class="preview-thumbnail nav nav-tabs">
										<li class="active"><a data-target="#pic-1"
											data-toggle="tab"><img src="img/aothun.jpg" /></a></li>
										<li><a data-target="#pic-2" data-toggle="tab"><img
												src="img/aothun1.jpg" /></a></li>
										<li><a data-target="#pic-3" data-toggle="tab"><img
												src="img/aothun2.jpg" /></a></li>
										<li><a data-target="#pic-4" data-toggle="tab"><img
												src="img/aothun3.jpg" /></a></li>
									</ul>

								</div>
								<div class="details col-md-6">
									<h3 class="product-title"> <c:out value="${model.name}" /></h3>
									<h4 class="oldPrice">
										OLD PRICE: <span class="oldprice">$180</span>
									</h4>
									<h4 class="price">
										Price: <span>$90</span>
									</h4>
									<h4 class="material">
										Material: <span>Thun</span>
									</h4>
									<h5 class="sizes">
										sizes:
										<div class="checkbox">
											<label><input type="checkbox" value=""> Size
												M</label>
										</div>
										<!-- start quantity input -->
										<div class="center">
											<p></p>
											<div class="input-group">
												<span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														disabled="disabled" data-type="minus"
														data-field="quant[1]">
														<span class="glyphicon glyphicon-minus"><i
															class="fas fa-minus"></i></span>
													</button>
												</span> <input type="text" name="quant[1]"
													class="form-control input-number" value="1" min="1"
													max="10"> <span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														data-type="plus" data-field="quant[1]">
														<span class="glyphicon glyphicon-plus"><i
															class="fas fa-plus"></i></span>
													</button>
												</span>
											</div>
											<p></p>
											<p>
										</div>
										<!-- end quantity input -->

										<div class="checkbox">
											<label><input type="checkbox" value=""> Size
												L</label>
										</div>
										<!-- start quantity input -->
										<div class="center">
											<p></p>
											<div class="input-group">
												<span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														disabled="disabled" data-type="minus"
														data-field="quant[1]">
														<span class="glyphicon glyphicon-minus"><i
															class="fas fa-minus"></i></span>
													</button>
												</span> <input type="text" name="quant[1]"
													class="form-control input-number" value="1" min="1"
													max="10"> <span class="input-group-btn">
													<button type="button" class="btn btn-default btn-number"
														data-type="plus" data-field="quant[1]">
														<span class="glyphicon glyphicon-plus"><i
															class="fas fa-plus"></i></span>
													</button>
												</span>
											</div>
											<p></p>
											<p>
										</div>
										<!-- end quantity input -->

									</h5>

									<div class="action">

										<button type="button" class="btn btn-success">Buy Now
										</button>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end detail product -->

			</div>
		</div>
		<!-- /.container-fluid -->
		<!-- Edit Account -->
		<div id="editAccountModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form>
						<div class="modal-header">
							<h4 class="modal-title">Change Infomation</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>

						<div class="modal-body">
							<div class="form-group">
								<label>ID</label> <input type="text" class="form-control"
									disabled>
							</div>
							<div class="form-group">
								<label>User Name</label> <input type="text" class="form-control"
									required>
							</div>
							<div class="form-group">
								<label>Password</label> <input type="password"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label>Confirm Password</label> <input type="password"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label>Full Name</label> <input type="text" class="form-control"
									required>
							</div>
							<div class="form-group">
								<label>Address</label> <input type="text" class="form-control"
									required>
							</div>
							<div class="form-group">
								<label>Email</label> <input type="email" class="form-control"
									required>
							</div>
							<div class="form-group">
								<label>Cell phone</label> <input type="text"
									class="form-control" required>
							</div>

						</div>
						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal"
								value="Cancel"> <input type="submit"
								class="btn btn-info" value="Save">
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
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>


	<!-- Custom scripts for all pages-->
	<script src="js/myshop-admin.js"></script>
	<script src="js/quanity-input.js"></script>

	<!--  -->
	<script>
        $(document).ready(function () {
            $('#dataTable').DataTable();
        });
    </script>


</body>

</html>