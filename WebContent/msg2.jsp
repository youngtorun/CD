<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>信息板</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
	    bgcolor:#000;
		font-size: 10pt;
		color: #fff;
		font-family: SimSun;
	}
	
	.divBody {
		margin-left: 15%;
	}
	
	.divTitle {
		text-align:left;
		width: 900px;
		height: 25px;
		line-height: 25px;
		background-color: #000;
		border: 5px solid #000;
	}
	.divContent {
		width: 900px;
		height: 230px;
		border: 5px solid #000;
		margin-right:20px; 
		margin-bottom:20px;
	}
	.spanTitle {
		margin-top: 10px;
		margin-left:10px;
		height:25px;
		font-weight: 900;
	}
a {text-decoration: none;}
a:visited {color: #fff;}
a:hover {color:#fff; text-decoration: underline;}
}
</style>

  </head>
  
  <body>
  <c:choose>
  	<c:when test="${code eq 'success' }"><%--如果code是功能，它显示对号图片 --%>
  		<c:set var="img" value="/images/duihao.jpg"/>
  		<c:set var="title" value="成功"/>
  	</c:when>
  	<c:when test="${code eq 'error' }"><%--如果code是功能，它显示错号图片 --%>
  		<c:set var="img" value="/images/cuohao.png"/>
  		<c:set var="title" value="失败"/>
  	</c:when>
  	
  </c:choose>
<div class="divBody">
	<div class="divTitle">
		<span class="spanTitle">${title }</span>
	</div>
	<div class="divContent">
	  <div style="margin: 20px;">
		<img style="float: left; margin-right: 30px;" src="<c:url value='${img }'/>" width="150"/>
		<span style="font-size: 30px; color: #c30; font-weight: 900;">${msg }</span>
		<br/>
		<br/>
		<br/>
		<br/>
	<script type="text/javascript">
	var time = 4;
 
	function returnUrlByTime() {
 
		window.setTimeout('returnUrlByTime()', 1000);
 
		time = time - 1;
 
		document.getElementById("layer").innerHTML = time;
	}
</script>
 
  <body onload="returnUrlByTime()" style="background: url(${pageContext.servletContext.contextPath}/images/bg1.jpg)">
  <b ><font size=3 color="#406574">你还没有登录</font></b>
    	<b ><font size=3 color="#406574"><span id="layer">3</span>秒后，转入登录页面...</font></b>
	
	<%
		//转向语句
		response.setHeader("Refresh", "3;URL=jsps/user/login.jsp");
	%>
	
	  </div>
	</div>
</div>
  </body>
</html>
