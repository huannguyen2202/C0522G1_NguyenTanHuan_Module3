<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/29/2022
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${mess != null}">
    <p>${mess}</p>
</c:if>
<form method="post">
    <h2>Thêm người dùng mới</h2>
    <pre>Tên người dùng:     <input type="text" name="name"></pre>
    <pre>email:              <input type="text" name="email"></pre>
    <pre>Quốc gia:           <input type="text" name="country"></pre>
    <pre>                    <input type="submit" value="Lưu"></pre>
</form>
<a href="/user">Quay lại danh sách người dùng</a>
</body>
</html>
