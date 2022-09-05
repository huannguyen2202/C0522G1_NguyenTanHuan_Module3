<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <title>Add new Employee</title>
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
<div style="background-image: url(https://anhdephd.vn/wp-content/uploads/2022/04/anh-nen-4k-logo-windows-cuc-chat-3840x2160-pixels.jpg)"
     class="mx-5 px-5 pt-3">
    <h2 class="text-left fw-bold">Add new Employee</h2>

    <p class="text-left mt-3"><a href="/"><i class="fa-solid fa-house-chimney h5 mx-1"></i> Back to HOME</a></p>
    <p class="text-left">
        <a href="/employee"><i class="fa-solid fa-backward"></i> Back to Employee list</a>
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

        <form class="w-48 border border-2 border-success p-3 bg-warning rounded shadow-lg p-5 mb-7 bg-body rounded"
              action="/employee?action=create"
              method="post">
            <div class="form-group">
                <label for="employeeName" class="h6">Name:</label>
                <div class="input-group">
                    <input type="text" id="employeeName" class="form-control" placeholder="Input name"
                           name="employeeName">
                    <span class="input-group-text"> <i class="fa-solid fa-person-circle-question"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="employeeDateOfBirth" class="h6">Date of Birth:</label>
                <input type="date" id="employeeDateOfBirth" class="form-control" name="employeeDateOfBirth">
            </div>
            <div class="mt-3 form-group">
                <label for="employeeIdCard" class="h6">Id card:</label>
                <div class="input-group">
                    <input type="text" id="employeeIdCard" class="form-control" placeholder="Input Id card"
                           name="employeeIdCard">
                    <span class="input-group-text"><i class="fa-solid fa-id-card"></i></span>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label for="employeeSalary" class="h6">Salary:</label>
                <div class="input-group">
                    <input type="text" id="employeeSalary" class="form-control" placeholder="Input Salary"
                           name="employeeSalary">
                    <span class="input-group-text"><i class="fa-solid fa-id-card"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="employeePhoneNumber" class="h6">Phone Number:</label>
                <div class="input-group">
                    <input type="text" id="employeePhoneNumber" class="form-control" placeholder="Input Phone Number"
                           name="employeePhoneNumber">
                    <span class="input-group-text"><i class="fa-solid fa-id-card"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="employeeEmail" class="h6">Email:</label>
                <div class="input-group">
                    <input type="text" id="employeeEmail" class="form-control" placeholder="Input Email"
                           name="employeeEmail">
                    <span class="input-group-text"><i class="fa-solid fa-square-phone"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="employeeAddress" class="h6">Address:</label>
                <div class="input-group">
                    <input type="text" id="employeeAddress" class="form-control" placeholder="Input Address"
                           name="employeeAddress">
                    <span class="input-group-text"><i class="fa-solid fa-envelope-circle-check"></i></span>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label class="h6" for="employeePositionId">Rent type:</label>
                <div class="input-group">
                    <select id="employeePositionId" class="form-control" name="employeePositionId">
                        <c:forEach var="positionType" items="${positionList}">
                            <option value="${positionType.positionId}">${positionType.positionName}</option>
                        </c:forEach>
                    </select>
                    <%--                    <span class="input-group-text"><i class="fa-solid fa-business-time"></i></span>--%>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label class="h6" for="employeeEducationDegreeId">Rent type:</label>
                <div class="input-group">
                    <select id="employeeEducationDegreeId" class="form-control" name="employeeEducationDegreeId">
                        <c:forEach var="EducationDegreeType" items="${educationDegreeList}">
                            <option value="${EducationDegreeType.educationDegreeId}">${EducationDegreeType.educationDegreeName}</option>
                        </c:forEach>
                    </select>
                    <%--                    <span class="input-group-text"><i class="fa-solid fa-business-time"></i></span>--%>
                </div>
            </div>
            <div class="mt-3 form-group">
                <label class="h6" for="employeeDivisionId">Rent type:</label>
                <div class="input-group">
                    <select id="employeeDivisionId" class="form-control" name="employeeDivisionId">
                        <c:forEach var="divisionType" items="${divisionList}">
                            <option value="${divisionType.divisionId}">${divisionType.divisionName}</option>
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
