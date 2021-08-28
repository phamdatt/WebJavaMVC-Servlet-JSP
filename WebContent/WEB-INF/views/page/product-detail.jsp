<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Chi Tiết Sản Phẩm</title>

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
<section class="section-content bg-white padding-y">
<div class="container">

<!-- ============================ ITEM DETAIL ======================== -->
	<div class="row">
	
		<aside class="col-md-6">
		
<div class="card">
<article class="gallery-wrap"> 
	<div class="img-big-wrap">
	  <div> <a href="#"><img src="public/${listP.getImage()}" alt="" ></a></div>
	  <input type="hidden" name="image" value="iphone10.jpg"><br/>
	</div> <!-- slider-product.// -->
<!-- slider-nav.// -->
</article> <!-- gallery-wrap .end// -->
</div> <!-- card.// -->
		</aside>
		<main class="col-md-6">
		<form action="cart" method="POST">
<article class="product-info-aside">

<h2 class="title mt-3">${listP.getTitle()} </h2>
<div class="rating-wrap my-3">
	<ul class="rating-stars">
		<li style="width:80%" class="stars-active"> 
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
	<small class="label-rating text-muted">132 đánh giá</small>
	<small class="label-rating text-success"> <i class="fa fa-clipboard-check"></i> 154 Đơn Hàng </small>
</div> <!-- rating-wrap.// -->

<div class="mb-3"> 
<c:if test="${listP.getDiscount() != 0}">
	                  	<!-- product badge -->
	                <var class="price h4"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${listP.getPriceNet()}" />VND</var>
	             <del class="price old"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${listP.getPrice()}" />VND</del> 
	                  </c:if>	
	                     <c:if test="${listP.getDiscount() == 0}">
	<var class="price h4"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${listP.getPrice()}" />VND</var> 
		    </c:if>

</div> <!-- price-detail-wrap .// -->

<p>${listP.getDescription()} </p>

<dl class="row">
  <dt class="col-sm-3">Nhà Bán Lẻ</dt>
  <dd class="col-sm-9"><a href="#">Công Ty HaDes</a></dd>

  <dt class="col-sm-3">Số Bài Viết</dt>
  <dd class="col-sm-9">596 065 bài</dd>

  <dt class="col-sm-3">Đã Bán</dt>
  <dd class="col-sm-9">${listP.getSold()}</dd>

  <dt class="col-sm-3">Thời Gian Giao Hàng</dt>
  <dd class="col-sm-9">Từ 3 - 4 ngày</dd>

  <dt class="col-sm-3">Có Sẵn</dt>
  <dd class="col-sm-9">${listP.getAvailable()}</dd>
  <dt class="col-sm-3">Xuất Xứ</dt>
  <dd class="col-sm-9">${listP.getArea()}</dd>
</dl>

	<div class="form-row  mt-4">
		<div class="form-group col-md flex-grow-0">
			<div class="input-group mb-3 input-spinner">
			  <div class="input-group-prepend">
			    <button class="btn btn-light" type="button" id="button-plus"> + </button>
			  </div>
			  <input type="number" class="form-control" value="1"  name="quantity" style="width:50px;">
			  <div class="input-group-append">
			    <button class="btn btn-light" type="button" id="button-minus"> &minus; </button>
			  </div>
			</div>
		</div> <!-- col.// -->
		<div class="form-group col-md">
			<a href="${pageContext.request.contextPath}\cart?id=${listP.getId()}"  class="btn  btn-primary"> 
				<i class="fas fa-shopping-cart"></i> <span class="text">Thêm Vào Giỏ</span> 
			</a>
			<a href="#" class="btn btn-light">
        <i class="fas fa-envelope"></i> <span class="text">Liên Hệ Với Nhà Cung Cấp</span> 
			</a>
		</div> <!-- col.// -->
	</div> <!-- row.// -->

</article> 
</form><!-- product-info-aside .// -->
		</main> <!-- col.// -->
	</div> <!-- row.// -->

<!-- ================ ITEM DETAIL END .// ================= -->


</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= SECTION  ========================= -->
<section class="section-name padding-y bg">
<div class="container">

			<h3 style="text-align:center">Sản Phẩm Liên Quan</h3>

			<div class="row">
			<c:forEach var="sptt" items="${sptt}">
				<div class="col-md-4 ">
					<article class="card card-product-grid" style="height:400px;">
						<div class="img-wrap">
					<c:if test="${sptt.getDiscount() != 0}">
	                  	<!-- product badge -->
	                  <b class="badge badge-danger mr-1">- ${sptt.getDiscount()}%</b>
	                  </c:if>		
							<img src="public/${sptt.getImage()}" style="height:200px;">
						</div>
						<div class="info-wrap">
							<a href="detail-product?id=${sptt.getId()}" class="title">${sptt.getTitle()}</a>
							<div class="price-wrap my-2">
								<c:if test="${sptt.getDiscount() != 0}">
	                  	<!-- product badge -->
	               		 <span class="price h4"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${sptt.getPriceNet()}" />VND</span>
	             		<del class="price old"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${sptt.getPrice()}" />VND</del> 
	                  </c:if>			
	                       <c:if test="${sptt.getDiscount() == 0}">
							<var class="price h4"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${sptt.getPrice()}" />VND</var> 
		    			</c:if>
							</div>
							 <!-- price-wrap.// -->
							<a href="#" class="btn btn-block btn-primary">Mua Hàng</a>
						</div>
					</article>
				</div>
				</c:forEach>
				<!-- col.// -->

			</div> <!-- row.// -->
		
	
</div>

</section>
<!-- ========================= SECTION CONTENT END// ========================= -->


<jsp:include page="../shared/Footer.jsp" ></jsp:include>


</body>
</html>