<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/28/2022
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <title>Home</title>
    <title>Title</title>
    <style>
        table {
            border: solid 3px;
            /*background-color: white;*/
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
<div style="background-image: url(https://mega.com.vn/media/news/2306_hinh-nen-4k34.jpg); height: 750px">
    <div class="p-3">
        <h2 style="font-family: 'UTM Flamenco';font-size: 60px;color:white" class="text-center fw-bold">EMPLOYEE
            LIST</h2>
<%--        <a href="/"><i class="fa-solid fa-house-chimney h5 mx-1"></i> Back to HOME</a>--%>
        <p class="text-center mt-3"><a href="/"><i class="fa-solid fa-house-chimney h5 mx-1"></i> Back to HOME</a></p>
        <nav class="navbar navbar-expand-lg pb-0 mb-0">
            <div class="container-fluid">
                <a href="/employee?action=create">
                    <button class="btn btn-success btn-outline-secondary btn-sm">
                        <span class="fa-solid fa-file-circle-plus text-light h5 my-auto me-1"></span>
                        <span class="text-light"> Add new Employee</span>
                    </button>
                </a>

                <form class="d-flex my-2" role="search" action="/employee">
                    <input class="form-control me-2" type="text" placeholder="Input search Name" aria-label="Search"
                           name="nameSearch">
                    <input class="form-control me-2" type="text" placeholder="Input search Address" aria-label="Search"
                           name="addressSearch">
                    <input class="form-control me-2" type="text" placeholder="Input search Phone" aria-label="Search"
                           name="phoneSearch">
                    <button class="btn btn-outline-success" type="submit" name="action" value="search">
                        <i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
        </nav>
        <table class="table table-striped table-bordered " id="employeeTable">
            <thead>
            <tr style="background-color: #4043FF;" class="text-center text-white">
                <th class="text-light my-auto">#</th>
                <th style="color: white">Name</th>
                <th style="color: white">Birthday</th>
                <th style="color: white">Id card</th>
                <th style="color: white">Salary</th>
                <th style="color: white">Phone</th>
                <th style="color: white">Email</th>
                <th style="color: white">Address</th>
                <th style="color: white">Position</th>
                <th style="color: white">Education Degree</th>
                <th style="color: white">Division</th>
                <th style="color: white">Update</th>
                <th style="color: white">Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach varStatus="status" var="employee" items="${employeeList}">
                <tr text-light>
                    <td style="color: white" class="text-center">${status.count}</td>
                    <td style="color: white">${employee.employeeName}</td>
                    <td style="color: white" class="text-center">${employee.employeeDateOfBirth}</td>
                        <%--                    <c:if test="${customer.gender == 1}">--%>
                        <%--                        <td style="color: white" class="text-center">Male</td>--%>
                        <%--                    </c:if>--%>
                        <%--                    <c:if test="${customer.gender == 0}">--%>
                        <%--                        <td style="color: white" class="text-center">Female</td>--%>
                        <%--                    </c:if>--%>

                    <td style="color: white" class="text-center">${employee.employeeIdCard}</td>
                    <td style="color: white" class="text-center">${employee.employeeSalary}</td>
                    <td style="color: white">${employee.employeePhoneNumber}</td>
                    <td style="color: white">${employee.employeeEmail}</td>
                    <td style="color: white">${employee.employeeAddress}</td>

                    <c:forEach var="position" items="${positionList}">
                        <c:if test="${position.positionId == employee.employeePositionId}">
                            <td style="color: white" class="text-center">${position.positionName}</td>
                        </c:if>
                    </c:forEach>

                    <c:forEach var="educationDegree" items="${educationDegreeList}">
                        <c:if test="${educationDegree.educationDegreeId == employee.employeeEducationDegreeId}">
                            <td style="color: white" class="text-center">${educationDegree.educationDegreeName}</td>
                        </c:if>
                    </c:forEach>
                    <c:forEach var="division" items="${divisionList}">
                        <c:if test="${division.divisionId == employee.employeeDivisionId}">
                            <td style="color: white" class="text-center">${division.divisionName}</td>
                        </c:if>
                    </c:forEach>


                        <%--                    <td style="color: white" class="text-center">${employee.employeeDivisionId}</td>--%>
<%--                    <td style="color: white" class="text-center"><a--%>
<%--                            href="/employee?action=edit&id=${employee.employeeId}">--%>
<%--                        <span class="fa-regular fa-pen-to-square text-light h6 m-auto px-2"></span>--%>
<%--                    </a></td>--%>
                    <td class="text-center">
                        <a href="/employee?action=edit&id=${employee.employeeId}">
                            <button class="btn btn-primary btn-outline-secondary btn-sm">
                                <span class="fa-regular fa-pen-to-square text-light h6 m-auto px-2"></span>
                            </button>
                        </a>
                    </td>

                    <td style="color: white" class="text-center">
                        <button onclick="deleteEmployee('${employee.employeeId}','${employee.employeeName}')"
                                type="button"
                                class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            <i class="fa-solid fa-trash-can"></i>
                        </button>
                    </td>

                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="/employee">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input hidden name="id" id="idDelete">
                            <input hidden name="action" value="delete">
                            <span>Ban co muon xoa : </span>
                            <span style="color:red" id="nameDelete"></span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">delete</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function deleteEmployee(id, name) {
            document.getElementById("idDelete").value = id;
            document.getElementById("nameDelete").innerHTML = name;
        }
    </script>

</div>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function () {
        $('#employeeTable').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 6
        });
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

</body>
</html>
