<%-- 
    Document   : index
    Created on : Feb 16, 2022, 9:00:53 PM
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
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <style>
            .tb{
                width: 1000px;
                text-align: center;
            }
        </style>
    </head>

    <body>
        <!-- Navigation-->
        <%@include file="model/header.jsp"%>
        <!-- Content-->
        <div class="container" >
            <div  class="alert alert-success text-center mt-5" role="alert" >
                Order Successfully, Thank You 
                <div>
                    <a class="btn btn-outline-primary text-center" href="home">Continue Shopping</a>
                </div>
            </div>
            <div style="min-height: 100px"></div>
            <div class="row" style="min-height: 300px">
                <div class="col-md-3">
                    <table>
                <tr>
                    <td><H3>Bill</H3></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Order date:</td>
                    <td>${date}</td>
                </tr>
                <tr>
                    <td>Customer:</td>
                    <td>${sessionScope.account.user_Name}</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>${sessionScope.account.user_Email}@gmail.com</td>
                </tr>
                <tr>
                    <td>Total Price:</td>
                    <td>${totalPrice}$</td>
                </tr>
            </table>
                </div>
                <div class="col-md-6">
                    <table class="tb">
                <tr>
                    <th>Name</th>
                    <th style="width: 100px">Price</th>
                    <th>Quantity</th>
                </tr>
                <c:forEach items="${list}" var="c">
                    <tr>
                        <td>${c.skinName}</td>
                        <td>${c.skinPrice} $</td>
                        <td>${c.quantity}</td>
                    </tr> 
                </c:forEach>
            </table>
                </div>
            </div>
            
            

        </div>
        <!-- Footer-->
        <%@include file="model/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>
