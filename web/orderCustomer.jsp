<%-- 
    Document   : skin
    Created on : Feb 20, 2022, 10:45:39 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>CSShop</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            img{
                width: 100px;
            }
        </style>
    </head>
    <!--#2d2d33-->
    <body >
        <!--Header-->
        <%@include file="model/header.jsp"%> 
        <div class="row">
            <div class="col-md-7">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Image</th>
                            <th scope="col">Order ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Price</th>
                        </tr>
                    </thead>
                    <tbody>
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
                    </tbody>
                </table>
            </div>
            <div class="col-md-5">
                <div class="btn-group">
                    <a href= "ordercustomer?cid=-1" class="btn btn-primary active" aria-current="page">Clear filter</a>
                </div>
                <table class="table">
                    <thead>
                    <th scope="col">Order ID</th>
                    <th scope="col">User ID</th>
                    <th scope="col">Price</th>
                    <th scope="col">Message</th>
                    <th scope="col">Order Date</th>
                    <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                        </tr>
                        <c:forEach items="${listOrder}" var="i">
                            <tr>
                                <td>${i.orderId}</td>
                                <td>${i.userId}</td>
                                <td>${Math.round(i.price*100)/100}</td>
                                <td>${i.note}</td>
                                <td>${i.date}</td>

                                <td><div class="btn-group">
                                        <a href="ordercustomer?cid=${i.orderId}" class="btn btn-success active" aria-current="page"><i class="fas fa-info-circle"></i></a>
                                    </div></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!--Footer-->
        <%@include file="model/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    </body>
</html>
