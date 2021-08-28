<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Tất Cả Sản Phẩm</title>

<link href="public/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

<!-- jQuery -->
<script src="public/js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="public/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="public/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="public/fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="public/css/ui.css" rel="stylesheet" type="text/css"/>
<link href="public/css/responsive.css" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="public/js/script.js" type="text/javascript"></script>

</head>
<body>
<jsp:include page="../shared/Header.jsp" ></jsp:include>
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<aside class="col-md-2">

	<article class="filter-group">
		<h6 class="title">
			<a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_1">Sản Phẩm Theo Loại</a>
		</h6>
		<div class="filter-content collapse show" id="collapse_1">
			<div class="inner">
				<ul class="list-menu">
				<c:forEach var="loai" items="${listC}">
					<li class="list-group-item text-white ${tag == loai.getId()?"active":" " }"><a href="category?id=${loai.getId()}">${loai.getTitle()}</a></li>
					</c:forEach>
				</ul>
			</div> <!-- inner.// -->
		</div>
	</article> 
	<article class="filter-group">
		<h6 class="title">
			<a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_2"> Thương Hiệu</a>
		</h6>
		<div class="filter-content collapse show" id="collapse_2">
			<div class="inner">
				<label class="custom-control custom-checkbox">
				  <input type="checkbox" checked="" class="custom-control-input">
				  <div class="custom-control-label">Adidas  
				  	<b class="badge badge-pill badge-light float-right">120</b>  </div>
				</label>
				<label class="custom-control custom-checkbox">
				  <input type="checkbox" checked="" class="custom-control-input">
				  <div class="custom-control-label">Nike 
				  	<b class="badge badge-pill badge-light float-right">15</b>  </div>
				</label>
				<label class="custom-control custom-checkbox">
				  <input type="checkbox" checked="" class="custom-control-input">
				  <div class="custom-control-label">The Noth Face 
				  	<b class="badge badge-pill badge-light float-right">35</b> </div>
				</label>
				<label class="custom-control custom-checkbox">
				  <input type="checkbox" checked="" class="custom-control-input">
				  <div class="custom-control-label">The cat 
				  	<b class="badge badge-pill badge-light float-right">89</b> </div>
				</label>
				<label class="custom-control custom-checkbox">
				  <input type="checkbox" class="custom-control-input">
				  <div class="custom-control-label">Honda 
				  	<b class="badge badge-pill badge-light float-right">30</b>  </div>
				</label>
			</div> <!-- inner.// -->
		</div>
	</article> <!-- filter-group .// -->
	<article class="filter-group">
		<h6 class="title">
			<a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_3">Tuỳ Chọn Giá</a>
		</h6>
		<div class="filter-content collapse show" id="collapse_3">
			<div class="inner">
				<input type="range" class="custom-range" min="0" max="100" name="">
				<div class="form-row">
				<div class="form-group col-md-6">
				  <label>Nhỏ Nhất</label>
				  <input class="form-control" placeholder="$0" type="number">
				</div>
				<div class="form-group text-right col-md-6">
				  <label>Lớn Nhất</label>
				  <input class="form-control" placeholder="$1,0000" type="number">
				</div>
				</div> <!-- form-row.// -->
				<button class="btn btn-block btn-primary">Ứng Dụng</button>
			</div> <!-- inner.// -->
		</div>
	</article> <!-- filter-group .// -->
	<article class="filter-group">
		<h6 class="title">
			<a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_4"> Kích Cỡ </a>
		</h6>
		<div class="filter-content collapse show" id="collapse_4">
			  <div class="inner">
			  	<label class="checkbox-btn">
				    <input type="checkbox">
				    <span class="btn btn-light"> XS </span>
				  </label>

				  <label class="checkbox-btn">
				    <input type="checkbox">
				    <span class="btn btn-light"> SM </span>
				  </label>

				  <label class="checkbox-btn">
				    <input type="checkbox">
				    <span class="btn btn-light"> LG </span>
				  </label>

				  <label class="checkbox-btn">
				    <input type="checkbox">
				    <span class="btn btn-light"> XXL </span>
				  </label>
			  </div> <!-- inner.// -->
		</div>
	</article> <!-- filter-group .// -->
	<article class="filter-group">
		<h6 class="title">
			<a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#collapse_5"> Tình Trạng </a>
		</h6>
		<div class="filter-content collapse show" id="collapse_5">
			<div class="inner">
				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" checked="" class="custom-control-input">
				  <div class="custom-control-label">Bất Cứ Điều Kiện Nào</div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Thương Hiệu Mới</div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Mặt Hàng Đã Sử Dụng</div>
				</label>

				<label class="custom-control custom-radio">
				  <input type="radio" name="myfilter_radio" class="custom-control-input">
				  <div class="custom-control-label">Cũ Kĩ</div>
				</label>
			</div> <!-- inner.// -->
		</div>
	</article> <!-- filter-group .// -->

	</aside> <!-- col.// -->
	<main class="col-md-10">
<header class="mb-3">
		<div class="form-inline">
			<strong class="mr-md-auto">32 Sản Phẩm</strong>
			<select class="mr-2 form-control">
				<option>Mặt Hàng Mới Nhất</option>
				<option>Xu Hướng</option>
				<option>Phổ Biến Nhất</option>
				<option>Rẻ Nhất</option>
			</select>
			<div class="btn-group">
				<a href="page-listing-grid.html" class="btn btn-light" data-toggle="tooltip" title="List view"> 
					<i class="fa fa-bars"></i></a>
				<a href="page-listing-large.html" class="btn btn-light active" data-toggle="tooltip" title="Grid view"> 
					<i class="fa fa-th"></i></a>
			</div>
		</div>
</header><!-- sect-heading -->
<article class="card card-product-list">
<c:forEach var="product" items="${listP}">
	<div class="row no-gutters">
		<aside class="col-md-4">
			<a href="detail-product?id=${product.getId()}" class="img-wrap">
				<span class="badge badge-danger"> New</span>
				<img src="public/${product.getImage()}">
			</a>
		</aside> <!-- col.// -->
		<div class="col-md-5">
			
			<div class="info-main">
				<a href = "<c:url value = "detail-product?id=${product.getId()}"/>">${product.getTitle()}</a>
				<!-- <a href="detail-product?id=${product.getId()}" class="h5 title">${product.getTitle()}</a> -->
				<div class="rating-wrap mb-2">
					<ul class="rating-stars">
						<li style="width:100%" class="stars-active"> 
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> 
						</li>
						<li>
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> 
						</li>
					</ul>
					<div class="label-rating">9/10</div>
				</div> <!-- rating-wrap.// -->
			
				<p class="mb-3">
					<span class="tag"> <i class="fa fa-check"></i>Đã Xác Minh</span> 
					<span class="tag"> 5  Năm </span> 
					<span class="tag"> 80 Đánh Giá </span>
					<span class="tag"> ${product.getArea()}</span>
				</p>
			</div>
		<!-- info-main.// -->
		</div> 
		<!-- col.// -->
		<aside class="col-sm-3">
			<div class="info-aside">
				<div class="price-wrap">
					<span class="h5 price"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${product.getPrice()}" /></span> 
					<small class="text-muted">VND</small>
				</div> <!-- price-wrap.// -->
				<small class="text-warning">Giao Hàng Trả Tiền</small>
				
				<p class="text-muted mt-3">Công Ty Hades</p>
				<p class="mt-3">
					<a href="#" class="btn btn-outline-primary"> <i class="fa fa-envelope"></i> Liên Hệ Nhà Cung Cấp</a>
					<a href="#" class="btn btn-light"><i class="fa fa-heart"></i> Tiết Kiệm </a>
				</p>

				<label class="custom-control mt-3 custom-checkbox">
					  <input type="checkbox" class="custom-control-input">
				  	  <div class="custom-control-label">Thêm Vào
				  </div>
				</label>

			</div> <!-- info-aside.// -->
		</aside>
	<!-- col.// -->
	</div> 
	</c:forEach>
	<!-- row.// -->
</article> <!-- card-product .// -->

	</main> <!-- col.// -->

</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<jsp:include page="../shared/Footer.jsp" ></jsp:include>


</body>
</html>