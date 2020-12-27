<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: #000;
		margin: 0px;
		color: #fff;
	}
	a {
		text-decoration:none;
		color: #fff;
		font-weight: 900;
	} 
	a:hover {
		text-decoration: underline;
		color: #fff;
		font-weight: 900;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;font-size="+3";font-face="Lucida Sans Unicode, Lucida Grande, sans-serif" font-color="#FFFFFF"">有一家唱片行</h1>
<div style="font-size: 10pt; line-height:20px;">

<%-- 根据用户是否登录，显示不同的链接 --%>
<c:choose>
	<c:when test="${empty sessionScope.sessionUser }">
	      <a href="<c:url value='/adminjsps/login.jsp'/>" target="_parent">管理员登录</a> |&nbsp; 
		  <a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">用户登录</a> |&nbsp; 
		  <a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">用户注册</a>	
	</c:when>
	<c:otherwise>
		      用户登录：${sessionScope.sessionUser.loginname }&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/CartItemServlet?method=myCart'/>" target="body">我的购物车</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/OrderServlet?method=myOrders'/>" target="body">我的订单</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/jsps/user/pwd.jsp'/>" target="body">修改密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/UserServlet?method=quit'/>" target="_parent">退出</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/jsps/lian xi.jsp'/>" target="body">联系我们</a>	
	</c:otherwise>
</c:choose>



</div>
  </body>
</html>
