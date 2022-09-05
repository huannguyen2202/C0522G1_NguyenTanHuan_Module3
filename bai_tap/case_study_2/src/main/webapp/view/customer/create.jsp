<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/29/2022
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <title>Add new Customer</title>
    <style>
        a {
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div style="background-image: url(https://anhdephd.vn/wp-content/uploads/2022/04/anh-nen-4k-logo-windows-cuc-chat-3840x2160-pixels.jpg)" class="mx-5 px-5 pt-3">
    <h2 class="text-left fw-bold">Add new Customer</h2>

    <p class="text-left mt-3"><a href="/"><i class="fa-solid fa-house-chimney h5 mx-1"></i> Back to HOME</a></p>
    <p class="text-left">
        <a href="/customer"><i class="fa-solid fa-backward"></i> Back to Customer list</a>
    </p>

    <c:if test="${mess!=null}">
        <c:if test="${check}">
            <div class="justify-content-left d-flex">
                <div class="alert alert-success alert-dismissible fade show w-35">
                    <strong>Congratulations!</strong> ${mess}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </div>
        </c:if>

        <c:if test="${!check}">
            <div class="justify-content-left d-flex">
                <div class="alert alert-danger alert-dismissible fade show w-35">
                    <strong>Congratulations!</strong> ${mess}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </div>
        </c:if>
    </c:if>


    <div class="d-flex justify-content-left">

        <form class="w-48 border border-2 border-success p-3 bg-warning rounded shadow-lg p-5 mb-7 bg-body rounded" action="/customer?action=create"
              method="post">
            <div class="form-group">
                <label for="name" class="h6">Name:</label>
                <div class="input-group">
                    <input type="text" id="name" class="form-control" placeholder="Input name" name="name">
                    <span class="input-group-text"> <i class="fa-solid fa-person-circle-question"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="dateOfBirth" class="h6">Date of Birth:</label>
                <input type="date" id="dateOfBirth" class="form-control" name="dateOfBirth">
            </div>
            <div class="mt-3 form-group">
                <label class="h6">Gender:</label>
                <div class="d-flex">
                    <label class="d-block me-4">
                        <input type="radio" value="1" name="gender"> Male
                        <i class="fa-solid fa-person"></i>
                    </label>
                    <label class="d-block">
                        <input type="radio" value="0" name="gender"> Female
                        <i class="fa-light fa-person-dress-simple"></i>
                    </label>
                </div>

            </div>

            <div class="mt-3 form-group">
                <label for="idCard" class="h6">Id card:</label>
                <div class="input-group">
                    <input type="text" id="idCard" class="form-control" placeholder="Input Id card" name="idCard">
                    <span class="input-group-text"><i class="fa-solid fa-id-card"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="phoneNumber" class="h6">Phone number:</label>
                <div class="input-group">
                    <input type="text" id="phoneNumber" class="form-control" placeholder="Input Phone number" name="phoneNumber">
                    <span class="input-group-text"><i class="fa-solid fa-square-phone"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="email" class="h6">Email:</label>
                <div class="input-group">
                    <input type="text" id="email" class="form-control" placeholder="Input Email" name="email">
                    <span class="input-group-text"><i class="fa-solid fa-envelope-circle-check"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="address" class="h6">Address:</label>
                <div class="input-group">
                    <input type="text" id="address" class="form-control" placeholder="Input Address" name="address">
                    <span class="input-group-text"><i class="fa-solid fa-map-location-dot"></i></span>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label class="h6" for="customerTypeId">Rent type:</label>
                <div class="input-group">
                    <select id="customerTypeId" class="form-control" name="customerTypeId">
                        <c:forEach var="customerType" items="${customerTypeList}">
                            <option value="${customerType.id}">${customerType.name}</option>
                        </c:forEach>
                    </select>
                    <%--                    <span class="input-group-text"><i class="fa-solid fa-business-time"></i></span>--%>
                </div>
            </div>
            <div class="mt-3 text-center">
                <button class="btn btn-info btn-sm border border-2 border-success">
                    -- Save <i class="fa-solid fa-floppy-disk"></i> --
                </button>
            </div>
        </form>
    </div>


</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

</body>
</html>
