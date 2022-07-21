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

    </head>
    <!--#2d2d33-->
    <body style="background-color: #666666">
        <!--Header-->
        <%@include file="model/header.jsp"%> 
        <!-- Section-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">CSGO SHOP</h1>
                    <p class="lead fw-normal text-white-50 mb-0">A better way to trade CS:GO skins</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container-fluid px-4 px-lg-5 mt-5">
                <div class="row">
                    <div class="col-md-2 mb-sm-2">
                        <form action="filter">
                            <div class="dropdown">
                            <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                Price
                            </button>
                            <ul style="background-color: black" class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <input style="max-width: 60px; margin-left: 5px" type="text" value="" name="max">
                                <i style="color: white" class="fas fa-exchange-alt"></i>
                                <input onchange="this.form.submit()" style="max-width: 60px" type="text" value="" name="min">

                            </ul>
                        </div>
                        <div>
                            <c:set var="check" value="${check}" />
                            <c:set var="listCate" value="${listCate}"/>
                            <span class="btn btn-dark mt-3">Category<br></span>
                            <c:forEach begin="0" end="${listCate.size()-1}" var="i">
                                <div class="form-check">
                                    <input class="form-check-input" name="cid" ${check[i]?"checked":""} onclick="this.form.submit()" type="checkbox" value="${listCate.get(i).getCategoryId()}" id="flexCheckDefault">
                                    <label class="form-check-label" onclick="this.form.submit" for="flexCheckDefault">
                                        ${listCate.get(i).getCategoryName()}
                                    </label>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="dropdown mt-3">
                            <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                Sort
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item"><input type="radio" name="sort" onclick="this.form.submit()" value="priceHL">Sort by price(High-Low)</a></li>
                                <li><a class="dropdown-item"><input type="radio" name="sort" onclick="this.form.submit()" value="priceLH">Sort by price(Low-High)</a></li>
                                <li><a class="dropdown-item"><input type="radio" name="sort" onclick="this.form.submit()" value="nameLH">Sort by A->Z</a></li>
                                <li><a class="dropdown-item"><input type="radio" name="sort" onclick="this.form.submit()" value="nameHL">Sort by Z->A</a></li>
                            </ul>
                        </div>
                        </form>
                    </div>

                    <div class="col-md-10">
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-4 justify-content-center">
                            <c:forEach items="${listProduct}" var="p">
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Product image-->
                                        <a href="detail?skinId=${p.skinId}">
                                            <img class="card-img-top" src="./resource/image/${p.skinImg}"
                                                 alt="..." />
                                        </a>
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">${p.skinName}</h5>
                                                <!-- Product reviews-->
                                                <div class="d-flex justify-content-center small text-warning mb-2">
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                </div>
                                                <!-- Product price-->
                                                $${p.skinPrice}
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick="addToCardAsync(${p.skinId})">Add to
                                                    cart</a></div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!--Pagging-->
                <c:set var="skin" value="skin"/>
                <c:set var="filter" value="filter"/>
                <c:choose>
                    <c:when test="${listProduct == null || listProduct.size() == 0}">
                        Not founds
                    </c:when>
                    <c:otherwise>
                        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                            <ul class="pagination">
                                <c:choose>
                                    <c:when test="${page==1}">
                                        <li class="page-item" style="pointer-events: none;"><a style="color: white;background-color: black" class="page-link " href="skin?page=${page}"><span aria-hidden="true">&laquo;</span></a></li>
                                        </c:when>
                                        <c:otherwise>
                                        <li class="page-item"><a class="page-link" href="skin?page=${page-1}">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a></li>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:if test="${path == skin}">
                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                        <li class="page-item ${i==page?"active":""}"><a class="page-link" href="skin?page=${i}">${i}</a></li>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${path == filter}">
                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                        <li class="page-item ${i==page?"active":""}"><a class="page-link" href="filter?page=${i}">${i}</a></li>
                                        </c:forEach>
                                    </c:if>


                                <c:choose>
                                    <c:when test="${page==totalPage}">
                                        <li class="page-item" style="pointer-events: none;"><a style="color: white;background-color: black" class="page-link " href="skin?page=${page}"><span aria-hidden="true">&raquo;</span></a></li>
                                        </c:when>
                                        <c:otherwise>
                                        <li class="page-item"><a class="page-link" href="skin?page=${page+1}"><span aria-hidden="true">&raquo;</span></a></li>
                                        </c:otherwise>
                                    </c:choose>
                            </ul>
                        </nav>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>

        <!--Footer-->
        <%@include file="model/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script>
            function addToCardAsync(productId){
                axios.get('add-to-cart-async',{
                    params: {
                        productId:productId
                    }
                }).then((response)=>{
                    // lấy data
                    document.getElementById("cart-number").innerHTML = response.data;
                    // cập nhật
                })
            }
        </script>
    </body>
</html>
