<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<header class="section-header">
<section class="header-main border-bottom">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-xl-2 col-lg-3 col-md-12">
				<a href="${pageContext.request.contextPath}\home" class="brand-wrap">
					<img class="logo" src="public/images/logo2.png" style="width:200px;">
				</a> <!-- brand-wrap.// -->
			</div>
			<div class="col-xl-6 col-lg-5 col-md-6">
				<form action="search" class="search-header" method="POST">
					<div class="input-group w-100">

					    <input  name="txtSearch"type="text" class="form-control" placeholder="Search" value="${value}">
					    
					    <div class="input-group-append">
					      <button class="btn btn-primary" type="submit">
					        <i class="fa fa-search"></i> Tìm Kiếm 
					      </button>
					    </div>
				    </div>
				</form> <!-- search-wrap .end// -->
			</div> <!-- col.// -->
			<div class="col-xl-4 col-lg-4 col-md-6">
				<div class="widgets-wrap float-md-right">
					<div class="widget-header mr-3">
						<a href="#" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-user"></i>
								<span class="notify">3</span>
							</div>
							<small class="text"> Thông tin cá nhân</small>
						</a>
					</div>
					<div class="widget-header mr-3">
						<a href="#" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-comment-dots"></i>
								<span class="notify">1</span>
							</div>
							<small class="text"> Tin nhắn </small>
						</a>
					</div>
					<div class="widget-header mr-3">
						<a href="#" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-store"></i>
							</div>
							<small class="text"> Đặt Hàng </small>
						</a>
					</div>
					<div class="widget-header">
						<a href="${pageContext.request.contextPath}\cart" class="widget-view">
							<div class="icon-area">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<small class="text"> Giỏ Hàng </small>
						</a>
					</div>
				</div> <!-- widgets-wrap.// -->
			</div> <!-- col.// -->
		</div> <!-- row.// -->
	</div> <!-- container.// -->
</section> <!-- header-main .// -->



<nav class="navbar navbar-main navbar-expand-lg border-bottom">
<div class="container">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="main_nav">
	<ul class="navbar-nav">
		
		<li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath}\home">Trang Chủ</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}\san-pham">Sản Phẩm</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}\dich-vu">Dịch Vụ</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}\gioi-thieu">Giới Thiệu</a>
		</li>
		<c:if test="${sessionScope.acc.is_admin == 1}">
		<li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}\manager">Quản Lý Sản Phẩm</a>
		</li>
		</c:if>
	</ul>
	<ul class="navbar-nav ml-md-auto">
		<c:if test="${sessionScope.acc !=null}">
		<c:if test="${sessionScope.acc.gender == 1}">
		<li class="nav-item">
		<a class="nav-link" href="#">Xin Chào  Anh :  ${sessionScope.acc.name}</a>
		</li>
		</c:if>
		<c:if test="${sessionScope.acc.gender == 0}">
		<li class="nav-item">
		<a class="nav-link" href="#">Xin Chào  Chị :${sessionScope.acc.name}</a>
		</li>
		</c:if>
			<li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}\logout">Đăng Xuất</a>
		</li>
		</c:if>
		<c:if test="${sessionScope.acc ==null}">
			<li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}\login">Đăng Nhập</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}\register">Đăng Kí</a>
		</li>
		</c:if>
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="http://example.com" data-toggle="dropdown">Tiếng Anh</a>
			<div class="dropdown-menu dropdown-menu-right">
			<a class="dropdown-item" href="#">Tiếng Nga</a>
			<a class="dropdown-item" href="#">Tiếng Pháp</a>
			<a class="dropdown-item" href="#">Tiếng Trung Quốc</a>
			</div>
		</li>
		</ul>
	</div> <!-- collapse .// -->
</div> <!-- container .// -->
</nav>

</header> <!-- section-header.// -->

