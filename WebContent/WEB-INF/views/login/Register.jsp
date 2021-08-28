<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Đăng Kí</title>

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

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Đăng Kí</h4></header>
		<form action="register" method="POST">
				<div class="form-row">
					<!-- form-group end.// -->
					<div class="col form-group">
						<label>Tên Đăng Nhập</label>
					  	<input type="text" class="form-control" placeholder="" name="user" required>
					</div>
					<div class="col form-group">
						<label>Họ Và Tên</label>
					  	<input type="text" class="form-control" placeholder="" name="user_name"required>
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
				
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Nhập Mật Khẩu</label>
					    <input class="form-control" type="password" name="pass" required>
					</div> <!-- form-group end.// --> 
					<div class="form-group col-md-6">
						<label>Xác Nhận Mật Khẩu</label>
					    <input class="form-control" type="password" name="repass" required>
					</div> <!-- form-group end.// -->  
				</div>
			    <div class="form-group">
			        <button type="submit" class="btn btn-primary btn-block">Đăng Kí</button>
			    </div> <!-- form-group// -->      
			    <div class="form-group"> 
		            <label class="custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label"> Ghi Nhớ Mật Khẩu  </div> </label>
		        </div> <!-- form-group end.// -->           
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
    <p class="text-center mt-4">Bạn Đã Có Tài Khoản ?  <a href="${pageContext.request.contextPath}\login">Đăng Nhập</a></p>
    <br><br>
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<jsp:include page="../shared/Footer.jsp" ></jsp:include>

</body>
</html>