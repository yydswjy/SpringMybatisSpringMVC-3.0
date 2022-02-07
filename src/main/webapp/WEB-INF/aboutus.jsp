
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link href="./css/main.css" rel="Stylesheet" media="all" />
        <title>关于我们</title>
    </head>
    <style>
        body{
            margin:0;
            }
            title_{
                font-size: 30px;
            }
            mw{
                font-size: 15px;
                color:#52575d;
            }
            .flo:hover {
                -webkit-box-shadow: 0 0 6px #999;
           box-shadow: 0 0 6px #999;
                -webkit-transition:all .5s ease-out;
                transition: all .5s ease-out;
                background-color:#666666;
                color:#ffffff;
            }
    </style>
    <body>
        <div>
            
            <div style="background-image: url(./img/logoback.png); background-size: 2000px;">
                <a href="<%=request.getContextPath()%>/login1"><img src="./img/getback.png" width="100pxs" style="position: absolute;left: 30px;top: 20px;"></a>
                <img src="./img/logo.png" width="400px" style="margin-left:580px ;">
                <img src="./img/logo_.png" width="300px" style="top: 50px;position: absolute;">
            </div>
        </div>

        <div id="changeus">
            <table cellspacing=30px>  
                <td>
                    <a href="#"><img src="./img/aboutus_b.png" width="130px"></a>
                </td>
                <td>
                    <a href="https://www.dongchedi.com/" target="_blank"><img src="./img/joinus_h.png" width="130px" onmouseout="this.src='./img/joinus_h.png'" onmouseover="this.src='./img/joinus_b.png'"></a>
                </td>
            </table>
        </div>
            

        <div  align="center" >
            
            <img src="./img/cars/M1.jpg" alt="" width="1200px">
        </div>
        <div id="aboutus">

            <div style="line-height:33px;max-width: 800px;">
                <h1>以车辆租赁为核心的专业应用</h1> <br><br>
                ${user.aboutus}
            </div>

            <br><br><br><br><br><br>

            <div style="margin-left: -30px; margin-bottom: 100px">
                <table cellspacing="10px" >
                        <td><a href=""><img src="./img/work_c.png" alt="" width="400px" class="flo"></a></td>
                        <td><a href=""><img src="./img/work_g.png" alt="" width="400px" class="flo" ></a></td>
                        <td><a href="<%=request.getContextPath()%>/feedback"><img src="./img/work_mar.png" alt="" width="400px" class="flo"></a></td>
                </table>
            </div>

        </div>

        <div id="under">
            <img src="./img/under_.png" alt="" width="100%">
            <div id="footer">
            <div id="footword">Copyright © 2000-2077  维尔特 welt'sgame.com All Rights Reserved. 备案号：粤ICP备20002807号-2</div>
            </div>
        </div>

    </body>
    
</html>
