<%-- 
    Document   : detail
    Created on : Feb 21, 2022, 9:42:00 PM
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
        <script>
            function zoom(event) {
                var zoomer = event.currentTarget;
                x = event.offsetX / zoomer.offsetWidth * 100;
                y = event.offsetY / zoomer.offsetHeight * 100;
                zoomer.style.backgroundPosition = x + '% ' + y + '%';
            }
        </script>
        <style>
            figure.zoom {
                background-position: 100% 100%;
                position: relative;
                width: 500px;
                overflow: hidden;
                cursor: zoom-in;
            }

            figure.zoom img:hover {
                opacity: 0;
            }

            figure.zoom img {
                transition: opacity 0.5s;
                display: block;
                width: 100%;
            }
        </style>
    </head>

    <body>
        <!-- Navigation-->
        <%@include file="model/header.jsp"%>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <figure class="zoom" style="background-image: url('./resource/image/${skin.skinImg}')" onmousemove="zoom(event)" ontouchmove="zoom(event)">
                        <img src="./resource/image/${skin.skinImg}" />
                    </figure>
                                        <!--  <div class="col-md-6 zoom"><img class="card-img-top mb-5 mb-md-0" src="./resource/image/${skin.skinImg}" alt="..." /></div>-->
                    <div class="col-md-6">
                        <c:if test="${skin.skinStattrack == true}">
                            <div class="fs-3 mb-1"><span style="color: orange" >StatTrak ${name[0].trim()}</span>/${skin.skinStatus}</div>
                        </c:if>
                        <c:if test="${!skin.skinStattrack == true}">
                            <div class="fs-3 mb-1">${name[0].trim()}/${skin.skinStatus}</div>
                        </c:if>
                        <div>
                            Float:${skin.skinFloat}
                        </div>
                        <h3 class="display-5 fw-bolder">${name[1]}</h3>
                        <div class="fs-5 mb-5">
                            <span>${skin.skinPrice}$</span>
                        </div>
                        <form action="buynow" class="mb-4">
                            <input type="hidden" name="id" value="${skin.skinId}">
                            <table>
                                <tr>
                                    <td>
                                        Quantity :
                                    </td>
                                    <td>
                                        <input type="number" value="1" name="quantity">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <a><input type="submit" class=" btn btn-outline-success flex-shrink-0" value="Buy now">
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </form>

                    </div>
                </div>
            </div>
        </section>
        <!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <c:forEach items="${listRelate}" var="skin">
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="./resource/image/${skin.skinImg}" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${skin.skinName}</h5>
                                        <!-- Product price-->
                                        ${skin.skinPrice}
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <%@include file="model/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>

