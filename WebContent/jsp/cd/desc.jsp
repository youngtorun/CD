<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>唱片详细</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/pager/pager.css'/>" />
    <script type="text/javascript" src="<c:url value='/jsps/pager/pager.js'/>"></script>
	<script src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/cd/desc.css'/>">
	<script src="<c:url value='/jsps/js/cd/desc.js'/>"></script>
  </head>
  
  <body>
  <div class="divCdName">${cd.bname }</div>
  <div>
    <img align="top" src="<c:url value='/${cd.image_w }'/>" class="img_image_w"/>
    <div class="divCdDesc">
	    <ul>
	    	<li >商品编号：${cd.bid }</li>
	    	<li>yyr价：<span class="price_n">&yen;${cd.currPrice }</span></li>
	    	<li>定价：<span class="spanPrice" >&yen;${cd.price }折扣：<span style="color: #c30;">${cd.discount }</span>折</span></li>
	    </ul>
		<hr class="hr1"/>
		<table>
			<tr>
				<td colspan="3">
					歌手：${cd.singer } 
					</td>
			</tr>
			<tr>
				<td colspan="3">
					版本：${cd.press }
				</td>
			</tr>
			<tr>
				<td colspan="3">发行时间：${cd.publishtime }</td>
			</tr>
			<tr>
				<td>版次：${cd.edition }</td>
				<td>歌数：${cd.sNum }</td>
				<td>字数：${cd.wordNum }</td>
			</tr>
			<tr>
				<td width="180">演唱时间：${cd.printtime }</td>
				<td>时长：${cd.tlength }小时</td>
				<td>材质：${cd.paper }</td>
			</tr>
		</table>
		<div class="divForm">
			<form id="form1" action="<c:url value='/CartItemServlet'/>" method="post" >
				<input type="hidden" name="method" value="add"/>
				<input type="hidden" name="bid" value="${cd.bid }" />
  				我要买：<input id="cnt" style="width: 40px;text-align: center;" type="text" name="quantity" value="1"/>件
  			</form>
  			<a href="javascript:$('#form1').submit();" style="color:#c30;font-size:20px;">购买</a>
  		</div>
	</div>
  </div>
  </body>
</html>
