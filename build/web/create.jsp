<%-- 
    Document   : create
    Created on : Feb 27, 2022, 9:38:55 PM
    Author     : Administrator
--%>

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
        <form action="createProduct" method="post">
            <table>
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
                    <td><input type="file" name="img"></td>
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
                    <td><input type="Submit" value="Add"></td>
                </tr>
            </table>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
