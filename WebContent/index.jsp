
<!DOCTYPE html>

<%@page import="bean.nxbbean"%>
<%@page import="bean.ChuDebean"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Index</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Bootstrap Core CSS -->
<link href="Content/bootstrap.css" rel="stylesheet" />

<!-- Custom CSS -->
<link href="Content/shop-homepage.css" rel="stylesheet" />


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Start Bootstrap</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<%
						String login = request.getParameter("dangnhap");
						String dangky = request.getParameter("dangky");
						String trangchu = request.getParameter("trangchu");
						String ctms = request.getParameter("ms");
						String ctnxb = request.getParameter("nxb");
						String ctcd = request.getParameter("cd");
						if (login != null) {
							RequestDispatcher rd = request.getRequestDispatcher("test.java");
							rd.forward(request, response);
						} else if (dangky != null) {
							RequestDispatcher rd = request.getRequestDispatcher("DangKy.jsp");
							rd.forward(request, response);
						} else if (trangchu != null) {
							RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
							rd.forward(request, response);
						} else if (ctms != null) {
							RequestDispatcher rd = request.getRequestDispatcher("ChiTietSach.jsp");
							rd.forward(request, response);
						}
					%>
					<li><a href="index.jsp?trangchu">TRANG CHỦ</a></li>
					<li><a href="index.jsp?dangky">ĐĂNG K&#221;</a></li>
					<li><a href="index.jsp?dangnhap">ĐĂNG NHẬP</a></li>
					<li><a href="/Giohang/Giohang"
						style="color: white; font-weight: bold; text-decoration: none;">
							<img src="images/giohang.gif" />Giỏ Hàng (0)
					</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<p class="lead">CHỦ ĐỀ SÁCH</p>
				<div class="list-group">
					<%
						ArrayList<ChuDebean> dscd = (ArrayList<ChuDebean>) request.getAttribute("dschude");
						for (ChuDebean chude : dscd) {
					%>
					<a href="?cd=<%=chude.getMacd()%>" class="list-group-item"> <%=chude.getTenchude()%></a>
					<%
						}
					%>
				</div>
				<p class="lead">NHÀ XUẤT BẢN</p>
				<div class="list-group">
					<%
						ArrayList<nxbbean> dsnxb = (ArrayList<nxbbean>) request.getAttribute("dsnxb");
						for (nxbbean nxb : dsnxb) {
					%>
					<a href="?nxb=<%=nxb.getManxb()%>" class="list-group-item "> <%=nxb.getTennxb()%>
					</a>
					<%
						}
					%>
				</div>
			</div>
			<div class="col-md-9">
				<div class="row carousel-holder">
					<div class="col-md-12">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img class="slide-image" src="images/ancient-place.jpg" alt="">

								</div>
								<div class="item">
									<img class="slide-image" src="images/riverside-city.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="images/kayaks.jpg" alt="">
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-example-generic"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>
				</div>
				<div>
					<h3 style="Text-align: Center; color: red">SÁCH MỚI</h3>

					<div class="row">
						<%
							ArrayList<sachbean> ds = (ArrayList<sachbean>) request.getAttribute("dssach");
							for (sachbean sach : ds) {
								if (ctnxb != null) {
									if (ctnxb.equals(sach.getManxb())) {
						%>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<a href="?ms=<%=sach.getMasach()%>"> <img
									alt="<%=sach.getTensach()%>"
									src="Hinhsanpham/<%=sach.getAnhbia()%>" width="200" height="" />
									<div>
										<br />
										<h4 style="text-align: center">
											<%=sach.getTensach()%>
										</h4>
										<p></p>
									</div>
									<div class="ratings">
										<p class="pull-right">15 reviews</p>
										<p>
											<span class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"> </span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span>
										</p>
									</div>
								</a>
							</div>
						</div>
						<%
							}
								} else if (ctcd != null) {
									if (ctcd.equals(sach.getMacd())) {
						%>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<a href="?ms=<%=sach.getMasach()%>"> <img
									alt="<%=sach.getTensach()%>"
									src="Hinhsanpham/<%=sach.getAnhbia()%>" width="200" height="" />
									<div>
										<br />
										<h4 style="text-align: center">
											<%=sach.getTensach()%>
										</h4>
										<p></p>
									</div>
									<div class="ratings">
										<p class="pull-right">15 reviews</p>
										<p>
											<span class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"> </span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span>
										</p>
									</div>
								</a>
							</div>
						</div>
						<%
							}
								} else {
						%>
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<a href="?ms=<%=sach.getMasach()%>"> <img
									alt="<%=sach.getTensach()%>"
									src="Hinhsanpham/<%=sach.getAnhbia()%>" width="200" height="" />
									<div>
										<br />
										<h4 style="text-align: center">
											<%=sach.getTensach()%>
										</h4>
										<p></p>
									</div>
									<div class="ratings">
										<p class="pull-right">15 reviews</p>
										<p>
											<span class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"> </span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span> <span
												class="glyphicon glyphicon-star"></span>
										</p>
									</div>
								</a>
							</div>
						</div>
						<%
							}
							}
						%>
					</div>
					Trang 1/3;
					<div class="MenuTrang">

						<div class="pagination-container">
							<ul class="pagination">
								<li class="active"><a>1</a></li>
								<li><a href="/BookStore?page=2">2</a></li>
								<li><a href="/BookStore?page=3">3</a></li>
								<li class="PagedList-skipToNext"><a
									href="/BookStore?page=2" rel="next">»</a></li>
							</ul>
						</div>
					</div>
					<style>
.MenuTrang li {
	display: inline;
}
</style>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<div class="container">
		<hr>
		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; MVC 5</p>
				</div>
			</div>
		</footer>
	</div>
	<!-- /.container -->
	<!-- jQuery -->
	<script src="/Scripts/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/Scripts/bootstrap.min.js"></script>
</body>
</html>
