

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- PROMO -->
<!--<div class="row m-0 p-0" style="background-color:lightgrey;">
    <span id="promo">
        <marquee behavior="scroll" direction="left">SPECIAL PROMO! 1 USB stick for every Laptop!</marquee>
    </span>
</div>-->
<!-- PROMO -->
<!-- NAV -->
<nav class="navbar navbar-expand-xl navbar-light bg-light"  style="z-index:100;height: 100px;">
    <div class="container-fluid bg-light pb-3 pb-xl-0" style="z-index: 10;">
        <a class="navbar-brand" href="#"><i class="fas fa-desktop me-2"></i>CSSHOP</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="skin">Store</a>
                </li>
                <button class="btn btn-Light dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                    Categories
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                    <c:forEach items="${sessionScope.listCate}" var="c">
                        <li><a class="dropdown-item position-sticky" href="filter-category?categoryId=${c.categoryId}">${c.categoryName}</a></li>
                        </c:forEach>
                </ul>
                <!--          <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                              Brand
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <c:forEach items="${brands}" var="brand">
                    <li><a class="dropdown-item" href="ProductServlet?p=1&st=0&sm=0&c=0&b=${brand.getId()}&search=">${brand.getName()}</a></li>
                </c:forEach>
            </ul>
          </li>-->
                <li class="nav-item">
                    <a class="nav-link" href="#footer">About us</a>
                </li>
                <c:if test="${sessionScope.account.user_Role == true}">
                    <li class="nav-item">
                    <a class="nav-link" href="admin">Admin</a>
                </li>
                </c:if>
                
            </ul>
            <form class="d-flex me-2 mb-3 mb-xl-0" method="get" action="search">
                <!--        <input type="hidden" value="1" name="p"/>
                            <input type="hidden" value="0" name="st"/>
                            <input type="hidden" value="0" name="sm"/>
                            <input type="hidden" value="0" name="c"/>
                            <input type="hidden" value="0" name="b"/>-->
                <input class="form-control me-2 w-100" name="search" type="search" placeholder="Search" aria-label="Search" >
                <input type="submit" class="btn btn-outline-secondary" value="Search"/>
            </form>
            <c:if test="${account==null}">
                <i class="fas fa-user-circle me-2" style="font-size: 30px;color:grey;"></i>
            </c:if>
            <c:if test="${account!=null}">
                <i class="fas fa-user-check me-2" style="font-size: 30px;color:green;"></i>
            </c:if>

            <span class="me-2">
                <c:if test="${account==null}">
                    <a class="text-decoration-none" style="color:grey;" href="login">Login</a>
                </c:if>
                <c:if test="${account!=null}">
                    <div class="dropdown">
                        <button class="btn btn-Light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            ${account.user_Name}
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item btn-dark" href="logout">Logout</a></li>
                            <li><a class="dropdown-item btn-dark" href="editprofile?id=${account.user_Id}">Edit Profile</a></li>
                            <li><a class="dropdown-item btn-dark" href="changepass?id=${account.user_Id}">Change Password</a></li>
                            <li><a class="dropdown-item btn-dark" href="ordercustomer?id=${account.user_Id}">Order</a></li>
                        </ul>
                    </div>
                </c:if>
            </span>
            <a class="me-3" href="carts" >
                <i style="font-size: 30px;color:grey;" class="fas fa-shopping-cart"></i>
                <span id="cart-number" class="position-absolute bottom-50 start-99 translate-middle badge rounded-pill bg-danger">
                    <c:choose>
                        <c:when test="${sessionScope.carts.size() != null}">${sessionScope.carts.size()}</c:when>
                        <c:otherwise>0</c:otherwise>
                    </c:choose>
                        <span  class="visually-hidden">Cart item</span>
                </span>
            </a>
        </div>
    </div>
</nav>
<!-- NAV -->