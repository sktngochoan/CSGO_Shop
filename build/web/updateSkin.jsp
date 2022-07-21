<%-- 
    Document   : updateSkin
    Created on : Feb 27, 2022, 11:08:12 PM
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
        <title>CSShop</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            table{
                border: 2px solid black;
                border-radius: 5px;
                width: 50%; 
            }
            table td{
                padding-left: 25px;
                border: 1px solid black;
                padding-top: 10px;
                padding-bottom:  10px;
            }
            table td input{
                padding-right: 50%;
                height: 30px
            }
        </style>
    </head>
    <body>
        <form action="update-skin" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td>
                        <input type="text" name="skinId" value="${skin.skinId}" placeholder="${skin.skinId}" readonly="">
                    </td>
                <tr>
                <tr>
                    <td>Category</td>
                    <td>
                        <c:forEach items="${category}" var="i">
                            <c:choose>
                                <c:when test="${i.categoryId==skin.categoryId}">
                                    <input type="radio" name="category" value="${i.categoryId}" checked="checked"> ${i.categoryName} <br>
                                </c:when>
                                <c:otherwise>
                                    <input type="radio" name="category" value="${i.categoryId}"> ${i.categoryName} <br>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" placeholder="${skin.skinName}"></td>
                </tr><tr>
                    <td>Status</td>
                    <td><input type="text" name="status" placeholder="${skin.skinStatus}"></td>
                </tr>
                <tr>
                    <td>Float</td>
                    <td><input type="text" name="float" placeholder="${skin.skinFloat}"></td>
                </tr>
                <tr>
                    <td>Stattrack</td>
                    <c:choose>
                        <c:when test="${skin.isSkinStattrack()}">
                            <td><input type="radio" name="stattrack" value="1" checked="checked"> Yes <br><input type="radio" name="stattrack" value="0"> No</td>
                        </c:when>
                        <c:otherwise>
                            <td><input type="radio" name="stattrack" value="1"> Yes <br><input type="radio" name="stattrack" value="0" checked="checked"> No</td>
                        </c:otherwise>
                    </c:choose>
                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="file" name="img" placeholder="${skin.skinImg}"></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="number" name="quantity" placeholder="${skin.skinQuantity}"></td>
                </tr>
                <tr>
                    <td>Created_Date</td>
                    <td><p>${skin.createdDate}==></p><input type="text" name="date" value="${date}" readonly=""></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" placeholder="${skin.skinPrice}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="Submit" value="Update"></td>
                </tr>
            </table>
        </form>
        <!--        <form action="update-skin" method="post">
                    <table>
                        <tr>
                            <td>ID</td>
                            <td>
                                <input type="text" name="skinId" value="${skin.skinId}" placeholder="${skin.skinId}" readonly="">
                            </td>
                        <tr>
                            <td>Category</td>
                            <td>
                                <input type="radio" name="category" value="1"> Knives <br>
                                <input type="radio" name="category" value="2"> Gloves<br>
                                <input type="radio" name="category" value="3"> Pistols <br>
                                <input type="radio" name="category" value="4"> SMGs<br>
                                <input type="radio" name="category" value="5"> Assault Rifles <br>
                                <input type="radio" name="category" value="6"> Sniper Rifles<br>
                                <input type="radio" name="category" value="7"> Shotguns <br>
                                <input type="radio" name="category" value="8"> Machine guns<br>
                            </td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td><input type="text" name="name"></td>
                        </tr><tr>
                            <td>Status</td>
                            <td><input type="text" name="status"></td>
                        </tr>
                        <tr>
                            <td>Float</td>
                            <td><input type="text" name="float"></td>
                        </tr>
                        <tr>
                            <td>Stattrack</td>
                            <td><input type="radio" name="stattrack" value="1"> Yes <br><input type="radio" name="stattrack" value="0"> No</td>
                        </tr>
                        <tr>
                            <td>Image</td>
                            <td><input type="text" name="img"></td>
                        </tr>
                        <tr>
                            <td>Quantity</td>
                            <td><input type="number" name="quantity"></td>
                        </tr>
                        <tr>
                            <td>Created_Date</td>
                            <td><input type="text" name="date" value="${date}" readonly=""></td>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <td><input type="text" name="price"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="Submit" value="Update"></td>
                        </tr>
                    </table>
                </form>-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
