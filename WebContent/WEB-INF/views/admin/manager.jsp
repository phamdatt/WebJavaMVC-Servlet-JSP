<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lí Sản Phẩm</title>
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
<div class="content-wrapper my-2">
  <!-- Main content -->
  <section class="content">

    <!-- Default box -->
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">
          <strong class="text-danger">Danh Sách Sản Phẩm</strong>
        </h3>

        <div class="card-tools">
       <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"> <span>Add New Product</span></a>
          <a class="btn btn-sm btn-danger" href="#"><i class="fas fa-trash"></i> Thùng rác</a>

        </div>
      </div>
      <div class="card-body">

        <table class="table table-bordered">
          <thead>
            <tr>
              <th style="width:100px;">Hình</th>
              <th scope="col">Tên sản phẩm</th>  
              <th class="text-center">Chức năng</th>
              <th class="text-center">ID</th>
            </tr>
          </thead>
          <tbody>
        <c:forEach var="product" items="${listP}">
              <tr>
                <td>
                  <img class="img-fluid" src="public/${product.getImage()}" />

                </td>
                <td>${product.getTitle()}</td>
                <td class="text-center">
                  <a class="btn btn-sm btn-info" href="#"><i class="fas fa-edit"></i></a>
                  <a class="btn btn-sm btn-danger" href="delete?id=${product.getId()}"><i class="fas fa-trash"></i></a>
                </td>
                <td class="text-center">${product.getId()}</td>

              </tr>
          </c:forEach>
          </tbody>
        </table>
      </div>

      <!-- /.card-footer-->
    </div>
    <!-- /.card -->

  </section>
  <!-- /.content -->
</div>
 <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="POST" enctype="multipart/form-data">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input name="title" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>   
                              <div class="form-group">
                                <label>Price Net</label>
                                <input name="pricenet" type="text" class="form-control" required>
                            </div>         
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                      	
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach var="loai" items="${listC}">
                                        <option value="${loai.getId()}">${loai.getTitle()}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>

<jsp:include page="../shared/Footer.jsp" ></jsp:include>

</body>
</html>