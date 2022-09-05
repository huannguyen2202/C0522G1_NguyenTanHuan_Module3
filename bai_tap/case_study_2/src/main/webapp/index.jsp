<%--
  Created by IntelliJ IDEA.
  User: DELL 5540
  Date: 8/28/2022
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <title>$Title$</title>
    <style>
        .head {
            /*background-image: url(https://anhdepfree.com/wp-content/uploads/2020/11/hinh-nen-ve-nuoc.jpeg);*/
        }

        .cot31 {
            background-color: #62FCBD;
        }

        .left {
            background: #CDCDCD;
            height: 600px;
            overflow: hidden;
        }

        .left:hover {
            overflow: scroll;
        }
    </style>

</head>
<body>
<div class="container-fluid">
    <!--    hàng 1-->
    <div style="background-image: url(https://anhdepfree.com/wp-content/uploads/2020/11/hinh-nen-ve-nuoc.jpeg)" class="row">
        <div class="col-sm-3 col-lg-3 col-md-3 head">
            <img src="https://furamavietnam.com/wp-content/uploads/2018/10/logo.png" width="80px" height="80px"
                 style="margin-top: 15px;margin-left: 100px">
        </div>
        <div class="col-sm-3 col-lg-3 col-md-3 head">
            <img src="hinh 1.jpg" width="140px" height="80px" style="margin-top: 20px;margin-left: -50px">
            <img src="hinh logo.jpg" width="160px" height="80px" style="margin-top: 20px;margin-left: 80px">
        </div>
        <div class="col-sm-3 col-lg-3 col-md-3 head ">
            <p style="margin-top: 20px"><i class="fa-solid fa-location-dot"></i>
                103 - 105 Vo Nguyen Giap Street,<br>
                Khue My Ward, Ngu Hanh Son District,<br>
                Danang City, Vietnam<br>
                7,0 km from Danang Airport
            </p>
        </div>
        <div class="col-sm-3 col-lg-3 col-md-3 head ">
            <p style="margin-top: 20px"><i class="fa-solid fa-phone"></i>84-236-3847 333/888</p>
            <p><i class="fa-solid fa-envelope-circle-check"></i>reservation@furamavietnam.com</p>
        </div>
    </div>
    <%--    hàng 2--%>
    <div class="row" style="background-color: #58E0D0">
        <nav class="navbar navbar-expand-lg ">
            <div class="container-fluid mx-5">
                <a class="navbar-brand" href="/">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown ms-3">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">Employee</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/employee">Employee list</a></li>
                                <li><a class="dropdown-item" href="/employee?action=create">Add new Employee</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown ms-3">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">Customer</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/customer">Customer list</a></li>
                                <li><a class="dropdown-item" href="/customer?action=create">Add new Customer</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown ms-3">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">Service</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/facility">Facility list</a></li>
                                <li><a class="dropdown-item" href="/facility?action=create">Add new Facility</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown ms-3">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">Contract</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Contract list</a></li>
                                <li><a class="dropdown-item" href="#">Add new Contract</a></li>
                            </ul>
                        </li>
                    </ul>

                    <form class="d-flex my-2" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">
                            <i class="fa-solid fa-magnifying-glass"></i></button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
    <!--    hàng 3-->
    <div class="row">
        <div class="col-sm-2 col-lg-2 col-md-2 cot31 left">
            <iframe width="100%" height="200px" src="https://www.youtube.com/embed/qiag-dKL--Y"
                    title="Furama Resort Danang, Biệt thự nghỉ dưỡng FURAMA RESORT DANANG - Ngũ Hành Sơn, Đà Nẵng"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            <p>Furama Resort Đà Nẵng</p>
            <iframe width="100%" height="200px" src="https://www.youtube.com/embed/2b7iuDngAtg"
                    title="Furama Villas Danang - FURAMA RESORT DANANG, VIETNAM, 5 SAO BEACH RESORT" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            <p>Furama Resort Đà Nẵng</p>
            <iframe width="100%" height="200px" src="https://www.youtube.com/embed/PgvSSl4jm1U"
                    title="Furama Resort Đà Nẵng" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            <p>Furama Resort Đà Nẵng</p>
            <iframe width="100%" height="200px" src="https://www.youtube.com/embed/PgvSSl4jm1U"
                    title="Furama Resort Đà Nẵng" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            <p>Furama Resort Đà Nẵng</p>
            <iframe width="100%" height="200px" src="https://www.youtube.com/embed/PgvSSl4jm1U"
                    title="Furama Resort Đà Nẵng" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            <p>Furama Resort Đà Nẵng</p>
            <iframe width="100%" height="200px" src="https://www.youtube.com/embed/PgvSSl4jm1U"
                    title="Furama Resort Đà Nẵng" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            <p>Furama Resort Đà Nẵng</p>
        </div>
        <div class="col-sm-6 col-lg-6 col-md-6">
            <%--            <img src="https://danangfantasticity.com/wp-content/uploads/2018/08/trien-lam-anh-nghe-thuat-tung-canh-mung-le-2-9-tai-furama-resort-da-nang-02.jpg"--%>
            <%--                 style="width: 100%" height="600px">--%>
            <div>
                <img width="100%" height="600" id="img" onclick="changeImage()"
                     src="https://vtr.org.vn/FileManager/Anh%20web%202019/Thang%2010/2131/furama%20resort%20(1).jpg"
                     alt="">
            </div>
            <script>
                var index = 1;
                changeImage = function () {
                    var imgs = ["https://vtr.org.vn/FileManager/Anh%20web%202019/Thang%2010/2131/furama%20resort%20(1).jpg",
                        "https://gina.com.vn/wp-content/uploads/2021/10/resort-da-nang-7.jpg",
                        "https://vtr.org.vn/FileManager/Anh%20web%202019/Thang%2010/2131/furama%20resort%20(2).jpg"];
                    document.getElementById('img').src = imgs[index];
                    index++;
                    if (index == 3) {
                        index = 0;
                    }
                }
                setInterval(changeImage, 2000);
            </script>
        </div>
        <div style="background-color: #f5c2c7" class="col-sm-2 col-lg-2 col-md-2">
            <!--            hàng 8.1-->
            <div class="row">
                <div class="card shadow" style="width: 15rem; margin-top: 35px">
                    <img style="height: 150px"
                         src="https://furamavietnam.com/wp-content/uploads/2018/08/Vietnam_Danang_Furama_Resort_Gala_Dinner_Gala_Dinner_Latern-Night-1.jpg"
                         class="card-img-top" alt="hinh_anh/hinh 6.1.jpg">
                    <div class="card-body">
                        <p style="color: blue;font-size: 20px" class="card-text">Đại tiệc</p>
                    </div>
                </div>
            </div>
            <!--            hàng 8.2-->
            <div style="margin-top: 40px" class="row">
                <div class="card shadow" style="width: 15rem;">
                    <img style="height: 150px" src="https://furamavietnam.com/wp-content/uploads/2018/10/Cham_Dance.jpg"
                         class="card-img-top" alt="hinh_anh/hinh 6.1.jpg">
                    <div class="card-body">
                        <p style="color: blue;font-size: 20px" class="card-text">Lễ hội</p>
                    </div>
                </div>
            </div>
        </div>
        <div style="background-color: #f5c2c7" class="col-sm-2 col-lg-2 col-md-2">
            <!--            hàng 8.1-->
            <div class="row">
                <div class="card shadow" style="width: 15rem;margin-top: 35px">
                    <img style="height: 150px"
                         src="http://datphongresort.com/wp-content/uploads/2020/08/Presidential-Suite-M.jpg"
                         class="card-img-top" alt="hinh_anh/hinh 6.1.jpg">
                    <div class="card-body">
                        <p style="color: blue;font-size: 20px" class="card-text">Không gian riêng</p>
                    </div>
                </div>
            </div>
            <!--            hàng 8.2-->
            <div style="margin-top: 40px" class="row">
                <div class="card shadow" style="width: 15rem;">
                    <img style="height: 150px"
                         src="https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach.jpg"
                         class="card-img-top" alt="hinh_anh/hinh 6.1.jpg">
                    <div class="card-body">
                        <p style="color: blue;font-size: 20px" class="card-text">Bãi biển</p>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <!--    hàng 4-->
    <div style="background-color: #58E0D0" class="row text-center ">
        <div class="col-sm-12 col-lg-12 col-md-12">
            <p class="text-light p-3">&copy;FURAMA - officially operated in 1997.</p>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>
</html>
