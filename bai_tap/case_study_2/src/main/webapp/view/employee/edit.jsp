<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <title>Update Customer</title>
    <style>
        form{

        }
        body {
            background-color: #58E0D0;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="mx-5 px-5 pt-3">
    <h2 class="text-center fw-bold">Update Employee</h2>

    <p class="text-center mt-3"><a href="/"><i class="fa-solid fa-house-chimney h5 mx-1"></i> Back to HOME</a></p>

    <p class="text-center">
        <a href="/employee"><i class="fa-solid fa-backward"></i> Back to Employee list</a>
    </p>

    <c:if test="${mess!=null}">
        <c:if test="${check}">
            <div class="justify-content-center d-flex">
                <div class="alert alert-success alert-dismissible fade show w-50">
                    <strong>Congratulations!</strong> ${mess}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </div>
        </c:if>

        <c:if test="${!check}">
            <div class="justify-content-center d-flex">
                <div class="alert alert-danger alert-dismissible fade show w-50">
                    <strong>Sorry!</strong> ${mess}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </div>
        </c:if>
    </c:if>


    <div class="d-flex justify-content-center">

        <form class="w-50 border border-2 border-success p-3  rounded shadow-lg p-5 mb-7 bg-body rounded" method="post">
            <div class="form-group" hidden>
                <label class="h6">Employee:</label>
                <div class="input-group">
                    <input type="text" class="form-control" name="employeeId" value="${employee.employeeId}" readonly>
                    <span class="input-group-text"> <i class="fa-solid fa-person-circle-question"></i></span>
                </div>
            </div>

            <div class="form-group">
                <label for="employeeName" class="h6">Name:</label>
                <div class="input-group">
                    <input type="text" id="employeeName" class="form-control" name="employeeName" value="${employee.employeeName}">
                    <span class="input-group-text"> <i class="fa-solid fa-person-circle-question"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="employeeDateOfBirth" class="h6">Date of Birth:</label>
                <input type="date" id="employeeDateOfBirth" class="form-control" name="employeeDateOfBirth"
                       value="${employee.employeeDateOfBirth}">
            </div>

<%--            <div class="mt-3 form-group">--%>
<%--                <label class="h6">Gender:</label>--%>
<%--                <div class="d-flex">--%>
<%--                    <label class="d-block me-4">--%>
<%--                        <input type="radio" value="1" name="gender" checked> Male--%>
<%--                        <i class="fa-solid fa-mars"></i>--%>
<%--                    </label>--%>
<%--                    <label class="d-block">--%>
<%--                        <input type="radio" value="0" name="gender"> Female--%>
<%--                        <i class="fa-solid fa-venus"></i>--%>
<%--                    </label>--%>
<%--                </div>--%>

<%--            </div>--%>

            <div class="mt-3 form-group">
                <label for="employeeIdCard" class="h6">Id card:</label>
                <div class="input-group">
                    <input type="text" id="employeeIdCard" class="form-control" name="employeeIdCard"
                           value="${employee.employeeIdCard}">
                    <span class="input-group-text"><i class="fa-solid fa-id-card"></i></span>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label for="employeeSalary" class="h6">Salary:</label>
                <div class="input-group">
                    <input type="text" id="employeeSalary" class="form-control" name="employeeSalary"
                           value="${employee.employeeSalary}">
                    <span class="input-group-text"><i class="fa-solid fa-id-card"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="employeePhoneNumber" class="h6">Phone number:</label>
                <div class="input-group">
                    <input type="text" id="employeePhoneNumber" class="form-control" name="employeePhoneNumber" value="${employee.employeePhoneNumber}">
                    <span class="input-group-text"><i class="fa-solid fa-square-phone"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="employeeEmail" class="h6">Email:</label>
                <div class="input-group">
                    <input type="text" id="employeeEmail" class="form-control" name="employeeEmail" value="${employee.employeeEmail}">
                    <span class="input-group-text"><i class="fa-solid fa-envelope-circle-check"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="employeeAddress" class="h6">Address:</label>
                <div class="input-group">
                    <input type="text" id="employeeAddress" class="form-control" name="employeeAddress"
                           value="${employee.employeeAddress}">
                    <span class="input-group-text"><i class="fa-solid fa-map-location-dot"></i></span>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label for="employeePositionId" class="h6">Position:</label>
                <div class="input-group">
                    <input type="text" id="employeePositionId" class="form-control" name="employeePositionId"
                           value="${employee.employeePositionId}">
                    <span class="input-group-text"><i class="fa-solid fa-map-location-dot"></i></span>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label for="employeeEducationDegreeId" class="h6">Education:</label>
                <div class="input-group">
                    <input type="text" id="employeeEducationDegreeId" class="form-control" name="employeeEducationDegreeId"
                           value="${employee.employeeEducationDegreeId}">
                    <span class="input-group-text"><i class="fa-solid fa-map-location-dot"></i></span>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label for="employeeDivisionId" class="h6">Division:</label>
                <div class="input-group">
                    <input type="text" id="employeeDivisionId" class="form-control" name="employeeDivisionId"
                           value="${employee.employeeDivisionId}">
                    <span class="input-group-text"><i class="fa-solid fa-map-location-dot"></i></span>
                </div>
            </div>

<%--            <div class="mt-3 form-group">--%>
<%--                <label class="h6" for="customerType">Customer Type:</label>--%>
<%--                <div class="input-group">--%>
<%--                    <select id="customerType" class="form-control" name="customerTypeId">--%>
<%--                        <c:forEach var="customerType" items="${customerTypeList}">--%>
<%--                            <option value="${customerType.id}">${customerType.name}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </select>--%>
<%--                    <span class="input-group-text"><i class="fa-solid fa-ranking-star"></i></span>--%>
<%--                </div>--%>
<%--            </div>--%>

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