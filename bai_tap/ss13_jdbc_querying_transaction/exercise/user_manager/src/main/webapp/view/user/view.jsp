<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/29/2022
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3 style="color: blue">Thông tin chi tiết người dùng</h3>

<pre>Id:                <span>${user.getId()}</span></pre>
<pre>Tên người dùng:    <span>${user.getName()}</span></pre>
<pre>Email:             <span>${user.getEmail()}</span></pre>
<pre>Quốc gia:          <span>${user.getCountry()}</span></pre>

<a href="/user">Quay lại danh sách người dùng</a>

</body>
</html>
