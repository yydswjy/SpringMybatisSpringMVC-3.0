
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>

    <link href="./css/main.css" rel="Stylesheet" media="all" />
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
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/login1" class="sidebar-link text-muted"><i class="o-home-1 mr-3 text-gray"></i><span>主页</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/cartype" class="sidebar-link text-muted "><i class="o-survey-1 mr-3 text-gray"></i><span>租赁排行榜</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/car_type" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>汽车分类</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/listcar" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>汽车列表</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/addcar" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>添加汽车</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/aboutus" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>关于我们</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/serch" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>搜索</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/self" class="sidebar-link text-muted active" ><i class="o-survey-1 mr-3 text-gray"></i><span>个人信息</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/logout" class="sidebar-link text-muted"><i class="o-exit-1 mr-3 text-gray"></i><span>登出</span></a></li>
        </ul>
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">EXTRAS</div>
    </div>

    <div style="margin-top: 50px;margin-left: 50px">
        <div align="center">
            <a href="<%=request.getContextPath()%>/self"><text style="background-color: #cacaca;padding: 10px;border-radius: 10px;">个人资料</text></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="<%=request.getContextPath()%>/self_chage"><text>修改个人资料</text></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="<%=request.getContextPath()%>/self_info"><text>登录信息</text></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="<%=request.getContextPath()%>/self_order"><text>我的订单信息</text></a>
            <br><br><br><br><br><br>
        </div>
        <div align="left">

            <div>

                    <h1>名称：${user.name_}</h1>

                <br>
            </div>
            <div>
                    <h1>性别: ${user.sex}</h1>

                <br>
            </div>
            <div>
                    <h1>电话:${user.phone}</h1>

                <br>
            </div>
            <div>
                    <h1>所在地：${user.add_}</h1>

            </div>
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