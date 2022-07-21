<%-- 
    Document   : carts
    Created on : Mar 1, 2022, 10:19:18 PM
    Author     : Administrator
--%>

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
    </script>
</head>
<body>
    <!-- Header-->
    <%@include file="model/header.jsp" %>
    <!-- Product section-->
    <section class="py-5">
        <div class="container" style="min-height: 300px">
            <c:choose>
                <c:when test="${sessionScope.carts.size() == 0 || sessionScope.carts ==  null}">
                    <div class="alert alert-warning text-center fs-3 " role="alert">
                        It seems your cart is Empty!!!
                        <div><a href="skin" class="btn-outline-success">Shopping Now</a></div>
                    </div>
                </c:when>
                <c:otherwise>
                    <table class="table" >
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Image</th>
                                <th scope="col" style="max-width: 5px">Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">TotalPrice</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${carts}" var="c">
                            <form action="carts" method="post">
                                <tr>
                                <input type="hidden" value="${c.value.skin.skinId}" name="skinId">
                                <th scope="row">${c.value.skin.skinId}</th>
                                <td><img src="resource/image/${c.value.skin.skinImg}" width="100px"></td>
                                <td style="max-width: 150px">${c.value.skin.skinName}</td>
                                <td>${c.value.skin.skinPrice}</td>
                                <td><input onchange="this.form.submit()" type="number" value="${c.value.quantity}" name="quantity"></td>
                                <td>${c.value.skin.skinPrice*c.value.quantity}</td>
                                <td><a href="delete-cart?skinId=${c.value.skin.skinId}" class="btn btn-outline-danger"><i class="bi bi-trash3-fill"></i>Delete</a></td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>
                    <h3>Total Amount : ${totalPrice}$</h3>
                    <div>
                        <a href="payment" class="btn btn-success w-25" >Payment</a>
                        <a href="delete-cart" class="btn btn-danger w-25 position-absolute bottom-70" style="margin-left: 600px" >Clear Shopping Cart</a>
                    </div>
                    
                </c:otherwise>
            </c:choose>
        </div>
    </section>
    <!-- Footer-->
    <%@include file="model/footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>
