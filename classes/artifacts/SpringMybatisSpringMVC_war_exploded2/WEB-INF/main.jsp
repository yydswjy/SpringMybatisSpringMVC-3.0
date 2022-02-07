
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>主页</title>
    <meta charset="utf-8" />
    <link href="main.css" rel="Stylesheet" media="all" />
    <script>
        var time=0;
        function click_(){
            time +=1;
            if(time==3)
            {
                document.getElementById("taigu").style.display="block";
                alert("太鼓の达人TIME！！！！！！！");
            }
        }
    </script>
    <style type="text/css">
        body{
            margin:0;
        }
        ul li{
            margin-top: 20px;
            float: right;
            list-style-type: none;
            List-Style:None
        }
        a{
            font-family:Tahoma;
            outline: none;
            color: #52575d;
            text-decoration: none;
        }
        b{
            float: left;
            padding: 11px 40px;
            font-size: 23px;
            text-align: center;
            text-decoration: none;
            font-family:Tahoma;
            outline: none;
            color: #52575d;
        }
        b:hover {
            color: #13181d;
        }
        nav
        {
            background: url(./img/led.png)center ;
            background-size: 1500px;
            min-width: 1500px;
        }
        header{
            width:100%;
            position:fixed;
            top:0 ;
            z-index:99;
        }
        text{
            font-size: 20px;
            font-family:Tahoma;
            color: #52575d;
        }
        text2{
            font-size: 10px;
            font-family:Tahoma;
            color: #000000;
        }
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
<header>
    <nav>
        <ul>
            <a href="#" onclick="click_()"><img src="./img/logo.png" width="120" height="120" /></a>
            <img src="./img/logo_.png" width="120" height="120" />
            <li><b><a href="./login.html"><img src="./img/login.png" width="80"></b></a></li>
            <li><b><a href="./serach.html"><img src="./img/serc.png" width="80"></b></a></li>
            <li><a></a></li>
            <li><a href="aboutus.html"  ><b>关于我们</b></a></li>
            <li><a href="./downlo.html"  target="_blank"><b>客户端下载</b></a></li>
            <li><a href="./gametab.html"  ><b>游戏分类</b></a></li>
            <li><a href="./gamelist.html"  ><b>排行榜</b></a></li>
            <li><a href="#" title="首页" ><b>首页</b></a></li>
        </ul>
    </nav>
</header>

<div id="taigu">
    <a href="https://taiko.bui.pm"><img src="./img/don.gif" width="900px"></a>
</div>

<div id="middle">
    <text>最近促销:</text><more>更多>></more>
    <div id="middlep">
        <a href="#"target="_blank"> <img class="mp1" src="./img/mp1.png" alt="1" ></a>&nbsp;&nbsp;
        <a href="#"target="_blank"><img class="mp1" src="./img/mp2.png" alt="2" ></a>&nbsp;&nbsp;
        <a href="#"target="_blank"><img class="mp1" src="./img/mp3.png" alt="3" ></a>&nbsp;&nbsp;
        <a href="./gameinro1.html" target="_blank"><img class="mp1" src="./img/mp4.png" alt="4" ></a>
        <br>
        <table border="0">
            <tr>
                <td width="295px"> <a href="#"><text>武装突袭3</text></a></td>
                <td width="295px"> <a href="#"><text>毁灭战士：永恒</text></a></td>
                <td width="295px"> <a href="#"><text>不燃物前传：究极忍者风暴4（</text></a></td>
                <td width="295px"> <a href="./gameinro1.html" target="_blank"><text>Nek****a Vol.2077</text></a></td>
            </tr>
        </table>
        <table border="0">
            <tr>
                <td width="295px">¥65<colo>-67%</colo></td>
                <td width="295px">¥29<colo>-20%</colo></text></td>
                <td width="295px">¥38<colo>-80%</colo></text></td>
                <td width="295px">¥12<colo>-89%</colo></td>
            </tr>
        </table>
    </div>
</div>
<br><br>

<div align="center"><text>精选＆推荐</text></div><br>
<div id="middleright" align="center">
    <div class="photo" >
        <c target="_blank" href="#"><img class="img-slide img1" src="./img/mr1.png" alt="1" ></c>
        <c target="_blank" href="#"><img class="img-slide img2" src="./img/mr2.png" alt="2" ></c>
        <c target="_blank" href="#"><img class="img-slide img3" src="./img/mr3.png" alt="3" ></c>
        <c target="_blank" href="#"><img class="img-slide img4" src="./img/mr4.png" alt="4" ></c>
    </div>
</div>

<div id="middle">
    <text>最近促销:</text><more>更多>></more>
    <div id="middlep">
        <a href="#"target="_blank"> <img class="mp1" src="./img/mp1.png" alt="1" ></a>&nbsp;&nbsp;
        <a href="#"target="_blank"><img class="mp1" src="./img/mp2.png" alt="2" ></a>&nbsp;&nbsp;
        <a href="#"target="_blank"><img class="mp1" src="./img/mp3.png" alt="3" ></a>&nbsp;&nbsp;
        <a href="./gameinro1.html" target="_blank"><img class="mp1" src="./img/mp4.png" alt="4" ></a>
        <br>
        <table border="0">
            <tr>
                <td width="295px"> <a href="#"><text>武装突袭3</text></a></td>
                <td width="295px"> <a href="#"><text>毁灭战士：永恒</text></a></td>
                <td width="295px"> <a href="#"><text>不燃物前传：究极忍者风暴4（</text></a></td>
                <td width="295px"> <a href="./gameinro1.html" target="_blank"><text>Nek****a Vol.1</text></a></td>
            </tr>
        </table>
        <table border="0">
            <tr>
                <td width="295px">¥65<colo>-67%</colo></td>
                <td width="295px">¥29<colo>-20%</colo></text></td>
                <td width="295px">¥38<colo>-80%</colo></text></td>
                <td width="295px">¥12<colo>-89%</colo></td>
            </tr>
        </table>
    </div>
</div>
<div id="middle">
    <text>最近促销:</text><more>更多>></more>
    <div id="middlep">
        <a href="#"target="_blank"> <img class="mp1" src="./img/mp1.png" alt="1" ></a>&nbsp;&nbsp;
        <a href="#"target="_blank"><img class="mp1" src="./img/mp2.png" alt="2" ></a>&nbsp;&nbsp;
        <a href="#"target="_blank"><img class="mp1" src="./img/mp3.png" alt="3" ></a>&nbsp;&nbsp;
        <a href="./gameinro1.html" target="_blank"><img class="mp1" src="./img/mp4.png" alt="4" ></a>
        <br>
        <table border="0">
            <tr>
                <td width="295px"> <a href="#"><text>武装突袭3</text></a></td>
                <td width="295px"> <a href="#"><text>毁灭战士：永恒</text></a></td>
                <td width="295px"> <a href="#"><text>不燃物前传：究极忍者风暴4（</text></a></td>
                <td width="295px"> <a href="./gameinro1.html" target="_blank"><text>Nek****a Vol.1</text></a></td>
            </tr>
        </table>
        <table border="0">
            <tr>
                <td width="295px">¥65<colo>-67%</colo></td>
                <td width="295px">¥29<colo>-20%</colo></text></td>
                <td width="295px">¥38<colo>-80%</colo></text></td>
                <td width="295px">¥12<colo>-89%</colo></td>
            </tr>
        </table>
    </div>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="adv">
    <a href="./adv.html"><img src="./img/adv1.png" width="100%"></a>
</div>
</body>
<div id="footer">
    <div id="footword">Copyright © 2000-2077  维尔特 welt'sgame.com All Rights Reserved. 备案号：粤ICP备20002807号-2</div>
</div>
</html>
