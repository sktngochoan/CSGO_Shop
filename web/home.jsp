
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CSGOSHOP</title>
        <!-- CSS -->
        <style>
            .carousel img {
                max-height: 70vh;
                margin: 0 auto;
            }
            h3::after{
                content: " ";
                display: block;
                width: 300px;
                height: 3px;
                margin-top: 10px !important;
                margin: 0 auto;
                color: rgb(0, 0, 0);
                background-color: rgba(0,0,0, 0.4);
            }
            body
            {
                background-image: url(./resource/image/backhome1.jpg);
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size: cover;
            }
            h4::after{
                content: " ";
                display: block;
                width: 300px;
                height: 3px;
                margin-top: 10px !important;
                margin: 0 auto;
                color: rgb(0, 0, 0);
                background-color: rgba(255,255,255, 0.4);
            }
            .nav-pills .nav-link.active, .nav-pills .show>.nav-link{
                background-color: rgba(255,255,255,0.3)!important;
            }
            .white-text
            {
                color: white !important;
            }
        </style>
        <!-- BOOTSTRAP 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- FONTAWESOME 5 -->
        <!--<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!--    <script src="https://kit.fontawesome.com/a184e150a5.js" crossorigin="anonymous"></script>-->
    </head>
    <body style="background-color: whitesmoke">

        <div class="w-100 m-auto">
            <%@include file="./model/header.jsp" %>
            <!-- CAROUSEL -->
            <div id="carouselIndicators" class="carousel slide w-75 m-auto " data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./resource/image/ak47Asiimov.jpg" style="z-index: -2;"  class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./resource/image/awpHyberBeast.jpg" style="z-index: -2;" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./resource/image/m4a4Howl1.jpg" style="z-index: -2;" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <!-- CAROUSEL -->
            <!-- TOP 3 PRODUCTS -->
            <div class="container-fluid row pt-3 pb-3" style="background-color: whitesmoke; margin: 0 auto;">
                <h3 class="display-3 text-center mb-3">Top 3 products</h3>
                <c:forEach items="${listTop3Skin}" var="top3product">
                    <div class="col-4 ps-2 pe-2">
                        <div class="card">
                            <img src="./resource/image/${top3product.skinImg}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${top3product.skinName}</h5>
                                <a onclick="addToCardAsync(${top3product.skinId})" class="btn btn-success float-end">Add to cart</a>
                                <div class="btn-group">
                                    <span class="btn btn-primary"> ${top3product.skinPrice}</span>
                                    <span class="btn btn-primary"> $</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <!-- TOP 3 PRODUCTS -->
            <!-- NEWEST PRODUCTS -->
            <div class="container-fluid row pt-3 pb-3 newest" style="background-color: rgba(1, 31, 57, 0.7); margin: 0 auto;">
                <h4 class="display-4 text-center mb-3" style="color: white;">Newest products</h4>
                <c:forEach items="${listnewestSkin}" var="newestproduct">
                    <div class="col-3 ps-2 pe-2">
                        <div class="card">
                            <img src="./resource/image/${newestproduct.skinImg}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${newestproduct.skinName}</h5>
                                <a onclick="addToCardAsync(${newestproduct.skinId})" class="btn btn-success float-end">Add to cart</a>
                                <div class="btn-group">
                                    <span class="btn btn-primary"> ${newestproduct.skinPrice}</span>
                                    <span class="btn btn-primary"> $</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>      
            </div>
            <!-- NEWEST PRODUCTS -->
            <%@include file="./model/footer.jsp" %>
        </div>
        <!-- BOOTSTRAP 5 -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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