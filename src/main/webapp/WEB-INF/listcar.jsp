<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./css/pintuer.css">
    <link rel="stylesheet" href="./css/admin.css">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/4.2.1/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png?3">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <style>
        table{
            width:100%;
            margin: 50px auto;
            border:1px solid #CCCCCC;
        }
    </style>
</head>
<body>
<!-- navbar-->
<header class="header">
    <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow"><a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i class="fas fa-align-left"></i></a><a href="" class="navbar-brand font-weight-bold text-uppercase text-base">????????????????????????</a>
        <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
            <li class="nav-item dropdown ml-auto"><a id="userInfo" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle"><img src="img/avatar-6.jpg" alt="Jason Doe" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow"></a>
                <div aria-labelledby="userInfo" class="dropdown-menu"><a href="#" class="dropdown-item"><strong class="d-block text-uppercase headings-font-family">Mark Stephen</strong><small>Web Developer</small></a>
                    <div class="dropdown-divider"></div><a href="#" class="dropdown-item">Settings</a><a href="#" class="dropdown-item">Activity log       </a>
                    <div class="dropdown-divider"></div><a href="login.html" class="dropdown-item">Logout</a>
                </div>
            </li>
        </ul>
    </nav>
</header>
<div class="d-flex align-items-stretch">
    <div id="sidebar" class="sidebar py-3">
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
        <ul class="sidebar-menu list-unstyled">
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/login1" class="sidebar-link text-muted"><i class="o-home-1 mr-3 text-gray"></i><span>??????</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/cartype" class="sidebar-link text-muted "><i class="o-survey-1 mr-3 text-gray"></i><span>???????????????</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/car_type" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>????????????</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/listcar" class="sidebar-link text-muted active"><i class="o-survey-1 mr-3 text-gray "></i><span>????????????</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/addcar" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>????????????</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/aboutus" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>????????????</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/serch" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>??????</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/self" class="sidebar-link text-muted" ><i class="o-survey-1 mr-3 text-gray"></i><span>????????????</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/logout" class="sidebar-link text-muted"><i class="o-exit-1 mr-3 text-gray"></i><span>??????</span></a></li>
        </ul>
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">EXTRAS</div>
    </div>

    <div class="panel admin-panel">
        <div class="panel-head"><strong style="color: white"><span class="icon-pencil-square-o"></span>????????????</strong></div>
        <div class="body-content">
            <table>
                <tr>
                    <th style="width: 120px">??????</th>
                    <th style="width: 120px">??????</th>
                    <th style="width: 120px">??????</th>
                    <th style="width: 120px">??????</th>
                    <th style="width: 120px">??????????????????</th>
                    <th style="width: 120px">??????</th>
                    <th style="width: 120px">??????</th>
                    <th style="width: 120px">????????????</th>
                    <th style="width: 120px">????????????</th>
                    <th style="width:200px">??????</th>
                    <th>??????</th>
                </tr>
                <c:forEach items="${cars}" var="car" >
                    <tr>
                        <td>${car.number}</td>
                        <td>${car.type}</td>
                        <td>${car.brand}</td>
                        <td>${car.color}</td>
                        <td>${car.price}</td>
                        <td>${car.rentprice}</td>
                        <td>${car.deposit}</td>
                        <td>
                            <c:if test="${car.isrenting eq 0}">
                                ?????????
                            </c:if>
                            <c:if test="${car.isrenting eq 1}">
                                ?????????
                            </c:if>
                        </td>
                        <td>
                            <a href="<%=request.getContextPath() %>/cardetails?id=${car.carid}" target="_blank"><img src="./img/cars/${car.img}" alt="????????????" style="width:100px;height:80px" /></a>
                        </td>
                        <td><span id="cdes">${car.description}</span></td>

                        <td>
                            <img src="./img/css_delete.png"  style="width:12px;height:12px" />
                            <a style="text-decoration:none;" href="<%=request.getContextPath() %>/delecarbyid?id=${car.carid}" >??????</a>
                            <img src="./img/css_go.png"  style="width:12px;height:12px" />
                            <a style="text-decoration:none;" href="<%=request.getContextPath() %>/updatebycarid?id=${car.carid}">??????</a>
                            <img src="./img/css_add.png"  style="width:12px;height:12px" />
                            <a style="text-decoration:none;" href="<%=request.getContextPath() %>/addorder?id=${car.carid}">??????</a>
                        </td>

                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
    <!-- JavaScript files-->
    <script src="js/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="js/Chart.min.js"></script>
    <script src="js/js.cookie.min.js"></script>
    <script src="js/charts-custom.js"></script>
    <script src="js/front.js"></script>
</body>
</html>