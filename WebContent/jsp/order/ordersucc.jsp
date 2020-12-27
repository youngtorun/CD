<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ordersucc.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/order/ordersucc.css'/>">
  </head>
  
  <body>
<div class="div1">
	<span class="span1"><font color="#fff">订单已生成</font></span>
</div>
<div class="div2">
	<img src="<c:url value='/images/duihao.jpg'/>" class="img"/>
	<dl>
		<dt><font color="#fff">订单编号</font></dt>
		<dd><font color="#fff">${order.oid }</font></dd>
		<dt><font color="#fff">合计金额</font></dt>
		<dd><span class="price_t">&yen;${order.total }</span></dd>
		
	</dl>
	<span><font color="#fff">唱片行您的支持，祝您购物愉快！</font></span>
	<a href="<c:url value='/OrderServlet?method=paymentPre&oid=${order.oid }'/>" id="linkPay">支付</a>
</div>
  </body>
</html>
