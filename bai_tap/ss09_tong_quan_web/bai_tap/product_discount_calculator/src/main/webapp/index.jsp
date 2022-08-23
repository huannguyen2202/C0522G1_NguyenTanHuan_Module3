<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/23/2022
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/discount" method="post">
    <p>
      <input name="description" type="text"> Product Description
    </p>
    <p>
      <input name="price" type="text"> List Price
    </p>
    <p>
      <input name="percent" type="text"> Discount Percent
    </p>
    <p>
      <button type="submit">
        Calculate Discount
      </button>
    </p>

  </form>
  </body>
</html>
