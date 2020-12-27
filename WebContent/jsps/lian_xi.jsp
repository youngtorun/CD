<%@ 
   page contentType="text/html;charset=UTF-8"
   %>
<%
	String temp = new String();
	temp = (String) application.getAttribute("num");
	if (temp == null) {
		application.setAttribute("num", "0");
	}
%>
 
<html>
<head>
 
<title>留言板</title>
 
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="JavaScript">
	<!--
	function MM_openBrWindow(theURL, winName, features) {
		window.open(theURL, winName, features);
	}
	-->
</script>
</head>
 
<body bgcolor="#000" text="#fff">
	<p> </p>
	<p align="center">
		<b><font size="5" color="#fff">留言板</font></b>
	</p>
	<hr size="1">
	<form name="form1" method="post" action="lian xi2.jsp">
		<table width="60%" border="0" cellspacing="1" cellpadding="3"
			align="center" bgcolor="#000">
			<tr bgcolor="#000">
				<td width="20%">留言作者:</td>
				<td width="80%"><input type="text" name="txtaut"></td>
			</tr>
			<tr bgcolor="#000">
				<td width="20%">留言标题:</td>
				<td width="80%"><input type="text" name="txttit"></td>
			</tr>
			<tr bgcolor="#000">
				<td width="20%">留言内容:</td>
				<td width="80%"> </td>
			</tr>
			<tr bgcolor="#000">
				<td width="20%"> </td>
				<td width="80%"><textarea name="txtart" cols="45" rows="7"></textarea>
				</td>
			</tr>
			<tr bgcolor="#000">
				<td width="20%"> </td>
				<td width="80%"> </td>
			</tr>
			<tr bgcolor="#000">
				<td colspan="2">
					<div align="center">
						<input type="submit" name="cmdok" value="添加到留言薄"> 
						<input
							type="reset" name="cmdreset" value="重新填写留言">
						<input
							type="button" name="cmdread" value="查看所有留言"
							onClick="MM_openBrWindow('cha kan.jsp'),'','toolbar=no, location=no,status=no,menubar=no,scrollbars=no,width=400,height=400'">
					</div>
				</td>
			</tr>
		</table>
	</form>
	<p> </p>
</body>
</html>
 