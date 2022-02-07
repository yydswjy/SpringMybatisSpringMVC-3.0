<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url: 'http://localhost:8080/SpringMybatisSpringMVC_war_exploded/getname',  //url地址
                type: 'GET',
                dataType: 'json',
                timeout: 1000,
                cache: false,
                beforeSend: LoadFunction, //加载执行方法
                error: erryFunction,  //错误执行方法
                success: succFunction //成功执行方法
            })
            function LoadFunction() {
                $("#namedd").html('加载中...');
            }
            function erryFunction() {
                alert("error");
            }
            function succFunction(user) {
                $("#namedd").html(user.name_);
            };
        });
    </script>
    <meta charset="utf-8">
    <link href="./css/main.css" rel="Stylesheet" media="all" />
    <style type="text/css">

        colo{
            background-color: rgb(35, 109, 35);
            color:#fff;
            left: 200px;
            position: relative;
        }
        more{
            font-size: 10px;
            font-family:Tahoma;
            color: #757575;
            position: relative;
            left: 1100px;
        }
    </style>

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
    <script type="text/javascript">
        var index=0;
        //改变图片
        function ChangeImg() {
            index++;
            var a=document.getElementsByClassName("img-slide");
            if(index>=a.length) index=0;
            for(var i=0;i<a.length;i++){
                a[i].style.display='none';
            }
            a[index].style.display='block';
        }
        //设置定时器，每隔两秒切换一张图片
        setInterval(ChangeImg,2500);
    </script>
</head>
<body>
<!-- navbar-->
<header class="header">
    <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow"><a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i class="fas fa-align-left"></i></a><a href="" class="navbar-brand font-weight-bold text-uppercase text-base">汽车租赁管理系统</a>
        <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
            <li class="nav-item dropdown ml-auto"><a id="userInfo" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle"><img src="img/avatar-6.jpg" alt="Jason Doe" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow"></a>
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
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/login1" class="sidebar-link text-muted active"><i class="o-home-1 mr-3 text-gray"></i><span>主页</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/cartype" class="sidebar-link text-muted "><i class="o-survey-1 mr-3 text-gray"></i><span>租赁排行榜</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/car_type" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>汽车分类</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/listcar" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>汽车列表</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/addcar" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>添加汽车</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/aboutus" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>关于我们</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/serch" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>搜索</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/self" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>个人信息</span></a></li>
            <li class="sidebar-list-item"><a href="<%=request.getContextPath()%>/logout" class="sidebar-link text-muted"><i class="o-exit-1 mr-3 text-gray"></i><span>登出</span></a></li>
        </ul>
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">EXTRAS</div>
    </div>

    <div class="page-holder w-100 d-flex flex-wrap"><div style="">
        <h3 style="margin-top: 100px;margin-left: 100px;font-size: 50px">欢迎您:</h3>
        <h3 id="namedd" style="margin-left: 100px;font-size: 50px"></h3></div>
        <div class="container-fluid px-xl-5">
            <section class="py-5">
                <div align="center"><h3>精选＆推荐</h3></div><br>
                <div id="middleright" align="center">
                    <div class="photo" >
                        <c target="_blank" href="#"><img class="img-slide img1" src="./img/mr1.png" alt="1" ></c>
                        <c target="_blank" href="#"><img class="img-slide img2" src="./img/mr2.png" alt="2" ></c>
                        <c target="_blank" href="#"><img class="img-slide img3" src="./img/mr3.png" alt="3" ></c>
                        <c target="_blank" href="#"><img class="img-slide img4" src="./img/mr4.png" alt="4" ></c>
                    </div>
                </div>


                <br><br>
                <div class="row mb-4">
                    <div class="col-lg-8 mb-4 mb-lg-0">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">租车统计</h2>
                            </div>
                            <div class="card-body">
                                <p class="mb-5 text-gray">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                <div class="chart-holder mt-5 mb-5">
                                    <canvas id="lineChartExample"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">近段时间趋势</h2>
                            </div>
                            <div class="card-body">
                                <div class="chart-holder">
                                    <canvas id="lineCahrtsm1"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">趋势2</h2>
                            </div>
                            <div class="card-body">
                                <div class="chart-holder">
                                    <canvas id="barChartExample"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-lg-4">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">Pie chart Example</h2>
                            </div>
                            <div class="card-body">
                                <div class="chart-holder">
                                    <canvas id="pieChart1"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">Pie chart Example</h2>
                            </div>
                            <div class="card-body">
                                <div class="chart-holder">
                                    <canvas id="pieChart2"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="h6 mb-0 text-uppercase">Bar chart Example</h2>
                            </div>
                            <div class="card-body">
                                <p class="mb-5 text-gray">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                <div class="chart-holder mt-5 mb-5">
                                    <canvas id="barChartExample1"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">Doughnut chart Example</h2>
                            </div>
                            <div class="card-body">
                                <p class="mb-3 text-gray">Lorem ipsum dolor sit amet.</p>
                                <div class="chart-holder">
                                    <canvas id="doughnutChartExample"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">Pie chart Example</h2>
                            </div>
                            <div class="card-body">
                                <p class="mb-3 text-gray">Lorem ipsum dolor sit amet.</p>
                                <div class="chart-holder">
                                    <canvas id="pieChartExample"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">Polar chart Example</h2>
                            </div>
                            <div class="card-body">
                                <p class="mb-3 text-gray">Lorem ipsum dolor sit amet.</p>
                                <div class="chart-holder">
                                    <canvas id="polarChartExample"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h2 class="h6 text-uppercase mb-0">Radar chart Example</h2>
                            </div>
                            <div class="card-body">
                                <p class="mb-3 text-gray">Lorem ipsum dolor sit amet.</p>
                                <div class="chart-holder">
                                    <canvas id="radarChartExample"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 text-center text-md-left text-primary">
                        <p class="mb-2 mb-md-0">Your company &copy; 2018-2020</p>
                    </div>
                    <div class="col-md-6 text-center text-md-right text-gray-400">
                        <p class="mb-0">Copyright &copy; 2019.Company name All rights reserved.More Templates </p>
                        <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                    </div>
                </div>
            </div>
        </footer>
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