<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/26/2022
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Thêm sản phẩm mới</h3>
<c:if test="${mess!=null}">
    <p style="color: green">${mess}</p>
</c:if>
<form method="post">
    <pre>Tên sản phẩm:  <input type="text" name="name"></pre>
    <pre>Giá :          <input type="text" name="price"></pre>
    <pre>Mô tả:         <input type="text" name="describe"></pre>
    <pre>Nhà sản xuất:  <input type="text" name="producer"></pre>
    <pre>               <button style="background-color: #67dc6a">Lưu</button></pre>
</form>
<a href="/product">< Quay lại trang Danh sách sản phẩm</a>

</body>
</html>
