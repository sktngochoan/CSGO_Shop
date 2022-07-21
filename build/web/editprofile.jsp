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
            body {
                background: #BA68C8
            }

            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: #BA68C8;
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }
        </style>
    </head>
    <!--#2d2d33-->
    <body style="background-color: #666666">
        <!--Header-->
        <%@include file="model/header.jsp"%> 
        <div class="container rounded bg-white mt-5">
            <div class="row">
                <div class="col-md-4  mt-5 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5"><i class="fas fa-house-user btn btn-success fa-5x"></i><span class="font-weight-bold fs-3">${sessionScope.account.user_Name}</span><span class="text-black-50 fs-3">${sessionScope.account.user_Email}@gmail.com</span></div>
                </div>
                <div class="col-md-8">
                    <div class="p-3 py-5">
                        <form action="editprofile" method="post">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">User name</span>
                            <input type="text" class="form-control" name="name" value="${sessionScope.account.user_Name}" aria-label="Username" aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="email" value="${email}" aria-label="Recipient's username" aria-describedby="basic-addon2">
                            <span class="input-group-text" id="basic-addon2">@gmail.com</span>
                        </div>
                        
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Phone</span>
                            <input type="text" class="form-control" name="phone" value="${sessionScope.account.user_Phone}" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Link Steam</span>
                            <input type="text" class="form-control" name="linkSteam" value="${sessionScope.account.user_LinkSteam}" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="mt-3 text-end"><input class="btn-success w-25" style="height: 40px" type="submit" value="Save Profile"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--Footer-->
        <%@include file="model/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
