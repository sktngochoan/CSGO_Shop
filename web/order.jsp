
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <!-- BOXICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link rel="stylesheet" href="./css/grid.css">
        <link rel="stylesheet" href="./css/app.css">
        <style>
            .main{
                background-color: #666666;
            }
            a {
                text-decoration: none;
                padding: 4px;
                color: black;
                transition: box-shadow .4s, color .3s;
            }

            a:hover {
                color: #3300ff;
            }
            img{
                width: 115px
            }
            .admin-menu{
                border: 2px solid black;
                width: 250px;
                margin-left: 70px;
            }
            .product-list1{
                margin-top: 1px;
                border: 3px solid black;
                border-radius: 5px;
                table-layout: fixed;
                text-align: center;
                min-width: 700px;

            }
            .product-list2{
                border: 3px solid black;
                border-radius: 5px;
                table-layout: fixed;
                text-align: center;
                width: 100px;
                min-width: 570px;

            }
            .product-list1 td{
                border: 1px solid black;
                padding: 5px;
                border-radius: 5px;
            }
            .product-list1 th{
                background-color: #333333;
                color: white;
                border-radius: 5px;
            }
            .product-list2 td{
                border: 1px solid black;
                padding: 5px;
                border-radius: 5px;
            }
            .product-list2 th{
                background-color: #333333;
                color: white;
                border-radius: 5px;
            }
        </style>
    </head>
    <body class="main">
        <!--Header-->
        <nav class="navbar navbar-expand-xl navbar-light bg-light"  style="z-index:100;height: 100px;">
            <div class="container-fluid bg-light pb-3 pb-xl-0" style="z-index: 10;">
                <a class="navbar-brand" href="#"><i class="fas fa-desktop me-2"></i>CSSHOP</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="home">Home</a>
                        </li>
                        <div class="dropdown navbar-nav me-auto mb-3 ms-3 mb-lg-0">
                            <button class="btn btn-Light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                Admin menu
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="admin">Product</a></li>
                                <li><a class="dropdown-item" href="chart">Statistic</a></li>
                                <li><a class="dropdown-item" href="order">Order</a></li>
                                <li><a class="dropdown-item" href="user">User</a></li>
                            </ul>
                        </div>
                    </ul>
                    <i class="fas fa-user-circle me-2" style="font-size: 30px;color:grey;"></i>
                    <span class="me-2">
                        <c:if test="${account==null}">
                            <a class="text-decoration-none" style="color:grey;" href="login">Login</a>
                        </c:if>
                        <c:if test="${account!=null}">
                            <a class="text-decoration-none" style="color:grey;" href="logout">Logout</a>
                            <!--<a class="text-decoration-none" style="color:grey;" href="AccountServlet?t=1&pb=1&po=1&pf=1&pp=1">Hello, ${user.getName()}</a>-->
                        </c:if>
                    </span>
                </div>
            </div>
        </nav>
        <div class="row">
            <div class="col-7 col-md-9 col-sm-12">
                <!-- CATEGORY CHART -->
                <div class="box f-height">
                    <div class="box-body">
                        <table class="product-list1">
                            <tr>
                                <th>Image</th>
                                <th>Order ID</th>
                                <th>Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                            </tr>
                            <c:forEach items="${listOrderDetail}" var="i">
                                <tr>
                                    <td><img src="./resource/image/${i.skinImg}"
                                             alt="..." /></td>
                                    <td>${i.orderId}</td>
                                    <td>${i.skinName}</td>
                                    <td>${i.quantity}</td>
                                    <td>${i.skinPrice}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
                <!-- END CATEGORY CHART -->
            </div>
            <div class="col-5 col-md-3 col-sm-12">
                <!-- CUSTOMERS CHART -->
                <div class="box f-height">
                    <div class="box-body">
                        <div class="btn-group">
                            <a href="adminorderdetail?cid=-1" class="btn btn-primary active" aria-current="page">Clear filter</a>
                        </div>
                        <table class="product-list2">
                            <tr>
                                <th>Order ID</th>
                                <th>User ID</th>
                                <th>Price</th>
                                <th>Message</th>
                                <th>Order Date</th>
                                <th>Action</th>
                            </tr>
                            <c:forEach items="${listOrder}" var="i">
                                <tr>
                                    <td>${i.orderId}</td>
                                    <td>${i.userId}</td>
                                    <td>${Math.round(i.price*100)/100}</td>
                                    <td>${i.note}</td>
                                    <td>${i.date}</td>

                                    <td><div class="btn-group">
                                            <a href="adminorderdetail?cid=${i.orderId}" class="btn btn-success active" aria-current="page"><i class="fas fa-info-circle"></i></a>
                                        </div></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
                <!-- END CUSTOMERS CHART -->
            </div>
        </div>
        <!--Footer-->
        <%@include file="model/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
