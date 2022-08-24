<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/24/2022
  Time: 09:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>

<table class="table">

    <thead>
    <tr>
        <th scope="col">Tên</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <h2 style="text-align: center">Danh sách khách hàng</h2>
    <c:forEach var="customer" items="${customer}">
    <tr class="table-primary">
        <th scope="row"><c:out value="${customer.name}"/></th>
        <td><c:out value="${customer.dayOfBirth}"/></td>
        <td><c:out value="${customer.address}"/></td>
        <td>
            <img style="width: 50px" height="60px" src="${customer.picture}">
        </td>
    </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
