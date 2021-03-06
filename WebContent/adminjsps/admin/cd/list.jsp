<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>唱片分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" type="text/css" href="<c:url value='/adminjsps/admin/css/cd/list.css'/>">
<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/pager/pager.css'/>" />
<script type="text/javascript" src="<c:url value='/jsps/pager/pager.js'/>"></script>

<script type="text/javascript" src="<c:url value='/adminjsps/admin/js/cd/list.js'/>"></script>
  </head>
  
  <body>
<div class="divCd">
<ul>


<c:forEach items="${pb.beanList }" var="cd">
 <li>
  <div class="inner">
    <a class="pic" href="<c:url value='/admin/AdminCdServlet?method=load&bid=${cd.bid }'/>"><img src="<c:url value='/${cd.image_b }'/>" border="0"/></a>
    <p class="price" >
		<span class="price_n">&yen;${cd.currPrice }</span>
		<span class="price_r">&yen;${cd.price }</span>
		(<span class="price_s">${cd.discount }折</span>)
	</p>
	<c:url value="/admin/AdminCdServlet" var="singerUrl">
		<c:param name="method" value="findBySinger"/>
		<c:param name="singer" value="${cd.singer }"/>
	</c:url>
	<c:url value="/admin/AdminCdServlet" var="pressUrl">
		<c:param name="method" value="findByPress"/>
		<c:param name="press" value="${cd.press }"/>
	</c:url>
	<p><a id="cdname" title="${cd.bname }" href="<c:url value='/admin/AdminCdServlet?method=load&bid=${cd.bid }'/>">${cd.bname }</a></p>
	<p><a href="${singerUrl }" name='P_zz' title='${cd.singer }'>${cd.singer }</a></p>
	<p class="publishing">
		<span>版本：</span><a href="${pressUrl }">${cd.press }</a>
	</p>
  </div>
 </li>
</c:forEach>


</ul>
</div>
<div style="float:left; width: 100%; text-align: center;">
	<hr/>
	<br/>
	<%@include file="/jsps/pager/pager.jsp" %>
</div>
  </body>
 
</html>

