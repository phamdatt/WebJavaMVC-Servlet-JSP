<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section  class="padding-bottom-sm">

<header class="section-heading heading-line">
	<h4 class="title-section text-uppercase">Sản Phẩm Đề Xuất</h4>
</header>

<div class="row row-sm" >
	<c:forEach var="recoment" items="${recoment}">
	<div class="col-xl-2 col-lg-3 col-md-4 col-6">
		<div class="card card-sm card-product-grid" style="height:200px;">
			<a href="#" class="img-wrap"> <img src="public/${recoment.getImage()}" > </a>
			<figcaption class="info-wrap">
				<a href="detail-product?id=${recoment.getId()}" class="title">${recoment.getTitle()}</a>
				<div class="price mt-1"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${recoment.getPrice()}" />VND</div> <!-- price-wrap.// -->
			</figcaption>
		</div>
	</div>
	</c:forEach> <!-- col.// -->

</div> <!-- row.// -->
</section>
