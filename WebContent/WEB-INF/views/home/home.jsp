<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="Bootstrap e-commerce html template similar to Alibaba">
<meta name="keywords" content="Online template, shop, theme, template, html, css, bootstrap 4">

<title>Phạm Tiến Đạt</title>

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

<b class="screen-overlay"></b>
<!-- Header -->
<jsp:include page="../shared/Header.jsp" ></jsp:include>
<div class="container">
<!-- ========================= SECTION MAIN  ========================= -->
<!-- Slider and Category -->
<jsp:include page="Category_Slider.jsp"></jsp:include>
<!-- ========================= SECTION MAIN END// ========================= -->



<!-- =============== SECTION DEAL =============== -->
<!-- Cart-Deal -->
<jsp:include page="CartDeal.jsp"></jsp:include>
<!-- =============== SECTION DEAL // END =============== -->

<!-- =============== SECTION 1 =============== -->
<jsp:include page="Apparel.jsp"></jsp:include>
<!-- =============== SECTION 1 END =============== -->

<!-- =============== SECTION 2 =============== -->
<!-- Electronics -->
<jsp:include page="Electronics.jsp"></jsp:include>
<!-- =============== SECTION 2 END =============== -->



<!-- =============== SECTION REQUEST =============== -->
<!-- Quotation -->
<jsp:include page="RequestQuotation.jsp"></jsp:include>
<!-- =============== SECTION REQUEST .//END =============== -->


<!-- =============== SECTION ITEMS =============== -->
<!-- Recomment-Items -->
<jsp:include page="RecommentItems.jsp"></jsp:include>
<!-- =============== SECTION ITEMS .//END =============== -->


<!-- =============== SECTION SERVICES =============== -->
<!--Trades -->
<jsp:include page="Trades.jsp"></jsp:include>
<!-- =============== SECTION SERVICES .//END =============== -->

<!-- =============== SECTION REGION =============== -->
<!-- Region -->
<jsp:include page="Region.jsp"></jsp:include>
<!-- =============== SECTION REGION .//END =============== -->
<!-- Banner -->
<jsp:include page="Banner.jsp"></jsp:include>
</div>  
<!-- container end.// -->
<!-- Footer -->
<jsp:include page="../shared/Footer.jsp" ></jsp:include>

</body>
</html>