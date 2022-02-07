<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>问题反馈</title>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="css/pintuer.css">
        <link rel="stylesheet" href="css/admin.css">
        <link href="./css/main.css" rel="Stylesheet" media="all" />
        <script>
            function res(){
                alert("感谢您的反馈，即将返回主页！");
                setTimeout("javascript:location.href='<%=request.getContextPath()%>/login1'", 10);
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
                color: #000000;
                margin : 70px;
            }
            text1{
                font-size: 20px;
                font-family:Tahoma;
                color: #000000;
            }
        </style>
    </head>
    

	<body> 
        <header>   
            <nav> 
              <ul>
                <img src="./img/logo.png" width="120" height="120" /> 
                <img src="./img/logo_.png" width="120" height="120" /> 
                <li><b><a href="#"><img src="./img/head.png" width="80"></a></b></li>
                <li><b><a href="./serach.html"><img src="./img/serc.png" width="80"></a></b></li>
                <li><a></a></li>
                <li><a href="<%=request.getContextPath() %>/car_type"  ><b>汽车分类</b></a></li>
                <li><a href="<%=request.getContextPath() %>/cartype"  ><b>排行榜</b></a></li>
                <li><a href="<%=request.getContextPath() %>/login1" title="首页" ><b>首页</b></a></li>
                
              </ul>
            </nav>
          </header>
          
            <div style="margin-left:600px ;margin-top: 200px;">
                <h1 style="margin-left:250px ;">用户反馈表单</h1><br>
                <form method="post" action="<%=request.getContextPath() %>/feedbackok">
                        <p>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
                    <input type="text"  size="12" maxlength="20" name="advicename"/>
                    </p>
                    <p>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
                        <select name="advicesex" >
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </p>
                    <p>联系电话：
                    <input type="text" name="advicephone"/>
                    </p>
                    <p>电子邮件：
                    <input type="text"  name="adviceemail"/>
                    </p>
                    <p>联系地址：
                    <input type="text"  name="adviceaddress"/><br><br><br>
                    </p>
                    <p style="margin-left:250px ;"><text1>请输入您对网站的建议</text1></p>
                    <p>
                    <textarea name="advices" cols="100" rows="10" style="resize:none;"></textarea>
                    <br>

                    <div class="field">
                        <button class="button bg-main icon-check-square-o" name="submit" type="submit" id="dataSub" onclick="javascript:res();"> 提交</button>
                        <button class="button bg-main icon-check-square-o"  type="reset" name="reset" style="background-color: #98a2ac" > 清除</button>
                    </div>
<%--                    <input  type="submit" name="submit" value="提交" onclick="javascript:res();"/>--%>
<%--                    <input type="reset" name="reset" value="清除"/>--%>
                    </p>
                </form>
            </div>
            

        <br><br><br><br><br><br><br>
          <br><br><br><br><br><br><br><br><br><br><br>

    </body>
    <div id="footer">
            <div id="footword">Copyright © 2000-2077  维尔特 welt'sgame.com All Rights Reserved. 备案号：粤ICP备20002807号-2</div>
    </div>
</html>