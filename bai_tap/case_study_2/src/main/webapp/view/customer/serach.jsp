<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 9/1/2022
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form class="d-flex my-2" role="search" action="/customer">
    <input class="form-control me-2" type="text" placeholder="Input search Name" aria-label="Search"
           name="nameSearch">
    <input class="form-control me-2" type="text" placeholder="Input search Id card" aria-label="Search"
           name="idCardSearch">
    <select class="form-control me-2" name="customerTypeSearch">
        <option value="0">Customer type</option>
        <c:forEach var="customerType" items="${customerTypeList}">
            <option value="${customerType.customerTypeId}">${customerType.customerTypeName}</option>
        </c:forEach>
    </select>
    <button class="btn btn-outline-success" type="submit" name="action" value="search">
        <i class="fa-solid fa-magnifying-glass"></i></button>
</form>
</body>
</html>
