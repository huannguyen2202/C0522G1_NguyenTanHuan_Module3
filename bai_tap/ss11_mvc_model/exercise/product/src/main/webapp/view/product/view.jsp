<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/26/2022
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Thông tin sản phẩm</h3>
<pre>Id:            <span>${product.getId()}</span></pre>
<pre>Tên sản phẩm:  <span>${product.getName()}</span></pre>
<pre>Giá :          <span>${product.getPrice()}</span></pre>
<pre>Mô tả:         <span>${product.getDescribe()}</span></pre>
<pre>Nhà sản xuất:  <span>${product.getProducer()}</span></pre>
<pre>               <button style="background-color: #f14040">Xóa sản phẩm</button></pre>
<a href="/product">< Quay lại trang Danh sách sản phẩm</a>
</body>
</html>
