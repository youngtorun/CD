<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/user/login.css'/>">
	<script type="text/javascript" src="<c:url value='/jsps/js/user/login.js'/>"></script>
	<script src="<c:url value='/js/common.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript">
		function checkForm() {
			if(!$("#adminname").val()) {
				alert("管理员名称不能为空！");
				return false;
			}
			if(!$("#adminpwd").val()) {
				alert("管理员密码不能为空！");
				return false;
			}
			return true;
		}
	</script>
  </head>
  
  <body>
	<div class="main">
	 
	  <div>
	    <div class="imageDiv"><img class="img" src="<c:url value='/images/fm2 copy.png'/>"/></div>
        <div class="login1">
	      <div class="login2">
            <div class="loginTopDiv">
              <span class="loginTop">管理员登录</span>
             
            </div>
            <div><form action="<c:url value='/AdminServlet'/>" method="post" onsubmit="return checkForm()" target="_top">
                <input type="hidden" name="method" value="login" />
                  <table>
                    <tr>
                      <td width="50"></td>
                      <td><label class="error" id="msg">${msg }</label></td>
                    </tr>
                    <tr>
                      <td width="50" >管理员</td>
                      <td><input type="text" name="adminname" value="" id="adminname"/></td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td><label id="loginnameError" class="error"></label></td>
                    </tr>
                    <tr>
                      <td>密　码</td>
                      <td><input type="password" name="adminpwd" id="adminpwd"/></td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td><label id="loginpassError" class="error"></label></td>
                    </tr>
                    <tr>
           
                   
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td align="left">
                     <input type="submit" value="进入后台"/>
                      </td>
                    </tr>																				
                 </table>
              </form>
            </div>
          </div>
        </div>
      </div>
	</div>
  </body>
</html>