<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/formCheck.js"></script>
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
            border:1px solid #cccccc;
            width: 900px;
            margin: 50px auto;
        }
        td{
            vertical-align:middle;
            padding:10px;
        }
    </style>
</head>
<body>
<!-- navbar-->
<header class="header">
    <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow"><a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i class="fas fa-align-left"></i></a><a href="" class="navbar-brand font-weight-bold text-uppercase text-base">HELLO WORLD!</a>
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
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/login1" class="sidebar-link text-muted "><i class="o-home-1 mr-3 text-gray"></i><span>主页</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/cartype" class="sidebar-link text-muted "><i class="o-survey-1 mr-3 text-gray"></i><span>租赁排行榜</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/car_type" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>汽车分类</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/listcar" class="sidebar-link text-muted active"><i class="o-survey-1 mr-3 text-gray"></i><span>汽车列表</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/addcar" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>添加汽车</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/aboutus" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>关于我们</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/serch" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>搜索</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/self" class="sidebar-link text-muted" ><i class="o-survey-1 mr-3 text-gray"></i><span>个人信息</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/logout" class="sidebar-link text-muted"><i class="o-exit-1 mr-3 text-gray"></i><span>登出</span></a></li>
        </ul>
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">EXTRAS</div>
    </div>
<div class="panel admin-panel">
    <div class="panel-head"><strong style="color: white"><span class="icon-pencil-square-o"></span>修改汽车信息</strong></div>
    <div class="body-content">
        <form method="post" class="form-x"action="<%=request.getContextPath() %>/updatecarok" >
            <input type="hidden" name="carid" value="${cars_old.carid}" />
            <table>
                <tr>
                    <td width="100px">车号</td>
                    <td width="300px"> <input type="text" name="carsnumber" id="ccarNumber" value="${cars_old.number}" class="required" />* </td>
                    <td width="100px">汽车型号</td>
                    <td width="300px"> <input type="text" name="carstype" id="ccarType" value="${cars_old.type}" class="required" /> * </td>
                </tr>
                <tr>
                    <td>颜色</td>
                    <td> <input type="text" name="carscolor" id="ccolor" value="${cars_old.color}" /> </td>
                    <td>价值</td>
                    <td> <input type="text" name="carsprice" id="cprice" value="${cars_old.price}" class="required" /> * </td>
                </tr>
                <tr>
                    <td>租金</td>
                    <td> <input type="text" name="carsrentprice" id="crentprice" value="${cars_old.rentprice}" class="required" /> * </td>
                    <td>押金</td>
                    <td> <input type="text" name="carsdeposit" id="cdeposit" value="${cars_old.deposit}" class="required" />* </td>
                </tr>
                <tr>
                    <td>租用情况</td>
                    <td>
                        <select name="carsisrenting" id="crenting">
                            <c:if test="${cars_old.isrenting eq 0}" >
                                <option value="0" selected="selected" >未出租</option>
                                <option value="1">已出租</option>
                            </c:if>
                            <c:if test="${cars_old.isrenting eq 1}" >
                                <option value="0" >未出租</option>
                                <option value="1"  selected="selected">已出租</option>
                            </c:if>
                        </select>
                    </td>
                    <td width="100px">汽车品牌</td>
                    <td> <input type="text" name="carsbrand" id="ccarBrand" value="${cars_old.brand}" class="required" /> * </td>
                </tr>
                <tr>
                    <td>上传汽车图片</td>
                    <td colspan="3"> <input type="file" name="carsimg" value="${cars_old.img}"  id="cimg" />
                        <img src="./img/cars/${cars_old.img}" alt="暂无图片" style="width:100px;height:80px" />
                    </td>
                </tr>
                <tr>
                    <td>简介</td>
                    <td colspan="3">
                        <div class="form-group">
                            <div class="field">
                                <textarea name="carsdescription" class="input" style="height:120px;">${cars_old.description}</textarea>
                            </div>
                        </div>
                    </td>
                <tr>
            </table>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit" id="dataSub"> 提交</button>
                </div>
            </div>
        </form>
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
</div>
</body>

</html>
