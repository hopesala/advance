<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/css/bootstrap-theme.min.css"></script>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.0.3/js/bootstrap.min.js"></script>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>在线预约首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<script>
function show(){
var date = new Date(); //日期对象
var now = "";
now = date.getFullYear()+"年"; //读英文就行了
now = now + (date.getMonth()+1)+"月"; //取月的时候取的是当前月-1如果想取当前月+1就可以了
now = now + date.getDate()+"日";
now = now + date.getHours()+"时";
now = now + date.getMinutes()+"分";
now = now + date.getSeconds()+"秒";
document.getElementById("nowDiv").innerHTML = now; //div的html是now这个字符串 
setTimeout("show()",1000); //设置过1000毫秒就是1秒，调用show方法
}
</script>
<body onload="show()"> <!-- 网页加载时调用一次 以后就自动调用了-->
<div id="nowDiv"></div>
<span id="time"></span>
<script language="javascript"> showtime();</script>
   
   <div id="myCarousel" class="carousel slide">
   <!-- 轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="image/green1.png" alt="First slide">
      </div>
      <div class="item">
         <img src="image/red1.png" alt="Second slide">
      </div>
      <div class="item">
         <img src="image/blue1.png" alt="Third slide">
      </div>
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>
</div> 
   
   
     <hr>
<div style="margin:0 auto;width:300px;">
<p>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='registert.jsp'" >
      教师注册
   </button>
   <button type="button" class="btn btn-default btn-lg" onclick="window.location.href='Logint.jsp'">
      教师登录
   </button>
</p>


<hr>


<p>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='register.jsp'">
      学生注册
   </button>
   <button type="button" class="btn btn-default btn-lg" onclick="window.location.href='Login.jsp'">
      学生登录
   </button>
</p>
</div>
<hr>

  </body>
</html>
