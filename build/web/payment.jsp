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
        <div class="container" style="min-height: 500px">
            <div class="row">
                <div class="col-md-8" style="border: 3px solid #ccc; border-radius: 5px ; padding: 1rem" >
                    <table class="table" style="min-height: 300px" >
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Image</th>
                                <th scope="col">Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">TotalPrice</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${carts}" var="c">
                                <tr >
                            <input type="hidden" value="${c.value.skin.skinId}" name="productId">
                            <th scope="row">${c.value.skin.skinId}</th>
                            <td><img src="resource/image/${c.value.skin.skinImg}" width="100px"></td>
                            <td>${c.value.skin.skinName}</td>
                            <td>${c.value.skin.skinPrice} $</td>
                            <td>${c.value.quantity}</td>
                            <td>${c.value.skin.skinPrice*c.value.quantity}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <h3 class="btn btn-dark w-50 mt-5" >Total Money : ${totalPrice} $</h3>
                </div>
                <div class="col-md-4" style="border: 3px solid #ccc; border-radius: 5px ; padding: 1rem">
                    <form action="payment" method="post">
                        <input type="hidden" value="${account.user_Id}" name="userId">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" readonly="readonly" value="${sessionScope.account.user_Name}" id="name" name="name" aria-describedby="emailHelp">
                            <!--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>-->
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone</label>
                            <input type="text" class="form-control" readonly="readonly" value="${sessionScope.account.user_Phone}" id="phone" name="phone" aria-describedby="emailHelp">
                            <!--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>-->
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Email Address</label>
                            <input type="text" class="form-control" readonly="readonly" value="${sessionScope.account.user_Email}" id="address" name="emailAddress" aria-describedby="emailHelp">
                            <!--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>-->
                        </div>
                        <div class="mb-3">
                            <label for="linkSteam" class="form-label">Link Steam</label>
                            <input type="text" class="form-control" readonly="readonly" value="${sessionScope.account.user_LinkSteam}" id="linkSteam" name="linkSteam" aria-describedby="emailHelp">
                            <!--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>-->
                        </div>
                        <div class="form-floating">
                            <textarea class="form-control" id="note" name="note" style="height: 100px"></textarea>
                            <label for="note">Note</label>
                        </div>
                        <button type="submit" class="btn btn-dark w-100">Purchase <i class="fas fa-arrow-right"></i></button>
                    </form>
                            <button class="btn btn-success w-100"><a href="editprofile?id=${account.user_Id}" style="text-decoration: none;color: white"> <i class="fas fa-arrow-left me-1"></i>Change Profile</a></button>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <%@include file="model/footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>
