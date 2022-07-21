<%-- 
    Document   : chart
    Created on : Mar 10, 2022, 11:55:01 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png">
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <!-- BOXICONS -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- APP CSS -->
    <link rel="stylesheet" href="./css/grid.css">
    <link rel="stylesheet" href="./css/app.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .main{
                background-color: #666666;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-xl navbar-light bg-light"  style="z-index:100;height: 100px;">
            <div class="container-fluid bg-light pb-3 pb-xl-0" style="z-index: 10;">
                <a class="navbar-brand" href="#"><i class="fas fa-desktop me-2"></i>CSSHOP</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="home">Home</a>
                        </li>
                        <div class="dropdown navbar-nav me-auto mb-3 ms-3 mb-lg-0">
                            <button class="btn btn-Light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                Admin menu
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="admin">Product</a></li>
                                <li><a class="dropdown-item" href="chart">Statistic</a></li>
                                <li><a class="dropdown-item" href="order">Order</a></li>
                                <li><a class="dropdown-item" href="user">User</a></li>
                            </ul>
                        </div>
                    </ul>
                    <i class="fas fa-user-circle me-2" style="font-size: 30px;color:grey;"></i>
                    <span class="me-2">
                        <c:if test="${account==null}">
                            <a class="text-decoration-none" style="color:grey;" href="login">Login</a>
                        </c:if>
                        <c:if test="${account!=null}">
                            <a class="text-decoration-none" style="color:grey;" href="logout">Logout</a>
                            <!--<a class="text-decoration-none" style="color:grey;" href="AccountServlet?t=1&pb=1&po=1&pf=1&pp=1">Hello, ${user.getName()}</a>-->
                        </c:if>
                    </span>
                </div>
            </div>
        </nav>
        <div class="main">
        <div class="main-content">
            <div class="row">
                <div class="col-4 col-md-6 col-sm-12">
                    <div class="box box-hover">
                        <!-- COUNTER -->
                        <div class="counter">
                            <div class="counter-title">
                                total order
                            </div>
                            <div class="counter-info">
                                <div class="counter-count">
                                    ${totalOrder}
                                </div>
                                <i class='bx bx-shopping-bag'></i>
                            </div>
                        </div>
                        <!-- END COUNTER -->
                    </div>
                </div>
                <div class="col-4 col-md-6 col-sm-12">
                    <div class="box box-hover">
                        <!-- COUNTER -->
                        <div class="counter">
                            <div class="counter-title">
                                total profit
                            </div>
                            <div class="counter-info">
                                <div class="counter-count">
                                    $${totalProfit}
                                </div>
                                <i class='bx bx-line-chart'></i>
                            </div>
                        </div>
                        <!-- END COUNTER -->
                    </div>
                </div>
                <div class="col-4 col-md-6 col-sm-12">
                    <div class="box box-hover">
                        <!-- COUNTER -->
                        <div class="counter">
                            <div class="counter-title">
                                total visitors in 7 days
                            </div>
                            <div class="counter-info">
                                <div class="counter-count">
                                    ${totalVistor}
                                </div>
                                <i class='bx bx-user'></i>
                            </div>
                        </div>
                        <!-- END COUNTER -->
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-12 col-sm-12">
                    <!-- CUSTOMERS CHART -->
                    <div class="box f-height">
                        <div class="box-body">
                            <div id="chart3"></div>
                        </div>
                    </div>
                </div>
            <div class="row">
                <div class="col-6 col-md-6 col-sm-12">
                    <!-- CATEGORY CHART -->
                    <div class="box f-height">
                        <div class="box-body1">
                            <div id="chart1"></div>
                        </div>
                    </div>
                    <!-- END CATEGORY CHART -->
                </div>
                <div class="col-6 col-md-12 col-sm-12">
                    <!-- CUSTOMERS CHART -->
                    <div class="box f-height">
                        <div class="box-body">
                            <div id="chart2"></div>
                        </div>
                    </div>
                    <!-- END CUSTOMERS CHART -->
                </div>
                </div>
            
            </div>
        </div>
    </div>
        <!--chart-->
        
        

        <!--Footer-->
        <%@include file="model/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script>
            // CHART-1=============================
            let nameSkin = [];
            let quantity = [];
            <c:forEach items="${listOrderDetail}" var="i">
            nameSkin.push("${i.skinName}");
            quantity.push(${i.quantity});
            </c:forEach>
            var options = {
                series: quantity,
                chart: {
                    width: 700,
                    type: 'donut',
                    dropShadow: {
                        enabled: true,
                        color: '#111',
                        top: -1,
                        left: 3,
                        blur: 3,
                        opacity: 0.2
                    }
                },
                stroke: {
                    width: 0,
                },
                plotOptions: {
                    pie: {
                        donut: {
                            labels: {
                                show: true,
                                total: {
                                    showAlways: true,
                                    show: true
                                }
                            }
                        }
                    }
                },
                labels: nameSkin,
                dataLabels: {
                    dropShadow: {
                        blur: 3,
                        opacity: 0.8
                    }
                },
                fill: {
                    type: 'pattern',
                    opacity: 1,
                    pattern: {
                        enabled: true,
                        style: ['verticalLines', 'squares', 'horizontalLines', 'circles', 'slantedLines', 'circles'],
                    },
                },
                states: {
                    hover: {
                        filter: 'none'
                    }
                },
                theme: {
                    palette: 'palette2'
                },
                title: {
                },
                responsive: [{
                        breakpoint: 480,
                        options: {
                            chart: {
                                width: 600
                            },
                            legend: {
                                position: 'bottom'
                            }
                        }
                    }]
            };

            var chart1 = new ApexCharts(document.querySelector("#chart1"), options);
            chart1.render();

            // CHART-2=============================
            let viewLogin = [];
            let viewnonLogin = [];
            let date = [];

            <c:forEach items="${list}" var="i">
            viewLogin.push("${i.viewLogin}")
            </c:forEach>

            <c:forEach items="${list}" var="i">
            viewnonLogin.push("${i.viewnonLogin}")
            </c:forEach>
            <c:forEach items="${list}" var="i">
            date.push("${i.viewDate}")
            </c:forEach>

            var options = {
                series: [{
                        name: ' View Login',
                        data: viewLogin,
                    }, {
                        name: 'View nonLogin',
                        data: viewnonLogin,
                    }],
                chart: {
                    height: 600,
                    type: 'radar',
                },
                plotOptions: {
                    radar: {
                        size: 250,
                        polygons: {
                            strokeColors: '#e9e9e9',
                            fill: {
                                colors: ['#f8f8f8', '#fff']
                            }
                        }
                    }
                },
                title: {
                },
                colors: ['#0080FF', '#00FF00', '#FF6666'],
                markers: {
                    size: 2,
                    colors: ['#0080FF', '#00FF00', '#FF6666'],
                    strokeColor: ['#FFFF33', '#00FF00', '#FF6666'],
                    strokeWidth: 1,
                },
                tooltip: {
                    y: {
                        formatter: function (val) {
                            return val
                        }
                    }
                },
                xaxis: {
                    categories: date
                },
                yaxis: {
                    tickAmount: 7,
                    labels: {
                        formatter: function (val, i) {
                            if (i % 2 === 0) {
                                return val
                            } else {
                                return ''
                            }
                        }
                    }
                }
            };

            var chart2 = new ApexCharts(document.querySelector("#chart2"), options);
            chart2.render();
            // CHART 3:

            let countOrder = [];
            let sumPrice = [];
            let dateTime = [];
            <c:forEach items="${listOrderchart}" var="i">
            countOrder.push(${i.countOrder});
            dateTime.push("${i.date}");
            sumPrice.push(${i.price});
            </c:forEach>
            var options = {
                series: [{
                        name: 'Profit',
                        type: 'column',
                        data: sumPrice,
                    }, {
                        name: 'Order',
                        type: 'line',
                        data: countOrder,
                    }],
                chart: {
                    height: 350,
                    type: 'line',
                },
                stroke: {
                    width: [0, 4]
                },
                title: {
                },
                dataLabels: {
                    enabled: true,
                    enabledOnSeries: [1]
                },
                labels: dateTime,
                xaxis: {
                    type: 'datetime'
                },
                yaxis: [{
                        title: {
                        },

                    }, {
                        opposite: true,
                        title: {
                        }
                    }]
            };

            var chart3 = new ApexCharts(document.querySelector("#chart3"), options);
            chart3.render();

        </script>
    </body>
</html>
