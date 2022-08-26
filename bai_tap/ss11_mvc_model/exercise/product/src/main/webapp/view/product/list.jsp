<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/25/2022
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<a href="/product?action=add">Them moi</a>
<form action="/product">
    <input type="text" name="nameSearch">
    <input type="submit" name="action" value="search">
</form>
<table class="table table-striped">
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Price</th>
        <th>Status</th>
        <th>Producer</th>
        <th>Create</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
<%--    <jsp:useBean id="productList" scope="request" type="java.util.List"/>--%>
    <c:forEach varStatus="status" var="product" items="${productList}">
        <tr>
            <td>${status.count}</td>
            <td>${product.productName}</td>
            <td>${product.productPrice}</td>
            <td>${product.statusProduct}</td>
            <td>${product.producer}</td>
            <td><button class="btn btn-primary btn-sm">Create</button></td>
            <td><button class="btn btn-primary btn-sm">Edit</button></td>
            <td><button class="btn btn-danger btn-sm">Delete</button></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
