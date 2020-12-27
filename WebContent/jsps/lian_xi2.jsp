<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
 
 
<title>留言板</title>
 
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="JavaScript">
	
</script>
</head>
 
 
 
 
<body bgcolor="#000" text="#fff">
	<p> </p>
	<p align="center">
		<b><font size="5" color="#fff">留 言 板 </font></b>
	</p>
	<hr size="1">
	<%
		int n;
		String temp  = new String();
		String temp1 = new String();
		String temp2 = new String();
		String temp3 = new String();
		temp1 = request.getParameter("txttit");
		temp2 = request.getParameter("txtaut");
		temp3 = request.getParameter("txtart");
		n = temp1.length() * temp2.length() * temp3.length();
		if (n != 0) {
			temp = (String)application.getAttribute("num");
			n = Integer.parseInt(temp);
			n = n + 1;
			temp = temp.valueOf(n);
			application.setAttribute("num", temp);
			application.setAttribute("tit" + temp, temp1);
			application.setAttribute("aut" + temp, temp2);
			application.setAttribute("art" + temp, temp3);
	%>
	<p> </p>
	<p align="center">留言成功!</p>
	<%}
	 else {
	%>
	<p align="center"><font color="#fff">不添加作者、标题和内容,留言失败！</font></p>
	<%
		}
	%>
	<p align="center">
		<a href="main.jsp">返回首页</a>
	</p>
	<p align="center">
		<a href="cha kan.jsp">查看留言板内容</a>
	</p>
</body>
</html>