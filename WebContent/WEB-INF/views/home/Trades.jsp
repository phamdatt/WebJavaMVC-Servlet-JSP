<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section  class="padding-bottom">

<header class="section-heading heading-line">
	<h4 class="title-section text-uppercase">Thông Tin Dịch Vụ</h4>
</header>

<div class="row">
<c:forEach var="topic" items="${topic}">
	<div class="col-md-3 col-sm-6">
		<article class="card card-post" >
		  <img src="public/${topic.getImage()}" class="card-img-top" >
		  <div class="card-body" >
		    <h6 class="title">${topic.getTitle()}</h6>
		    <p class="small text-uppercase text-muted">${topic.getDescription()}</p>
		  </div>
		</article> <!-- card.// -->
	</div>
	</c:forEach> <!-- col.// -->

</div> <!-- row.// -->

</section>
