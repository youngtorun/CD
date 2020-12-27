<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>cd_desc.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="<c:url value='/adminjsps/admin/css/cd/desc.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/jquery/jquery.datepick.css'/>">
<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery.datepick.js'/>"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery.datepick-zh-CN.js'/>"></script>

<script type="text/javascript" src="<c:url value='/adminjsps/admin/js/cd/desc.js'/>"></script>

<script type="text/javascript">

$(function() {
	$("#box").attr("checked", false);
	$("#formDiv").css("display", "none");
	$("#show").css("display", "");	
	
	// 操作和显示切换
	$("#box").click(function() {
		if($(this).attr("checked")) {
			$("#show").css("display", "none");
			$("#formDiv").css("display", "");
		} else {
			$("#formDiv").css("display", "none");
			$("#show").css("display", "");		
		}
	});
});

function loadChildren() {
	/*
	1. 获取pid
	2. 发出异步请求，功能之：
	  3. 得到一个数组
	  4. 获取cid元素(<select>)，把内部的<option>全部删除
	  5. 添加一个头（<option>请选择2级分类</option>）
	  6. 循环数组，把数组中每个对象转换成一个<option>添加到cid中
	*/
	// 1. 获取pid
	var pid = $("#pid").val();
	// 2. 发送异步请求
	$.ajax({
		async:true,
		cache:false,
		url:"/cd/admin/AdminCdServlet",
		data:{method:"ajaxFindChildren", pid:pid},
		type:"POST",
		dataType:"json",
		success:function(arr) {
			// 3. 得到cid，删除它的内容
			$("#cid").empty();//删除元素的子元素
			$("#cid").append($("<option>====请选择2级分类====</option>"));//4.添加头
			// 5. 循环遍历数组，把每个对象转换成<option>添加到cid中
			for(var i = 0; i < arr.length; i++) {
				var option = $("<option>").val(arr[i].cid).text(arr[i].cname);
				$("#cid").append(option);
			}
		}
	});
}

/*
 * 点击编辑按钮时执行本函数
 */
function editForm() {
	$("#method").val("edit");
	$("#form").submit();
}
/*
 * 点击删除按钮时执行本函数
 */
 function deleteForm() {
	$("#method").val("delete");
	$("#form").submit();	
}

</script>
  </head>
  
  <body>
    <input type="checkbox" id="box"><label for="box">编辑或删除</label>
    <br/>
    <br/>
  <div id="show">
    <div class="sm">${cd.bname }</div>
    <img align="top" src="<c:url value='/${cd.image_w }'/>" class="tp"/>
    <div id="cd" style="float:left;">
	    <ul>
	    	<li>商品编号：${cd.bid }</li>
	    	<li>当前价：<span class="price_n">&yen;${cd.currPrice }</span></li>
	    	<li>定价：<span style="text-decoration:line-through;">&yen;${cd.price }</span>　折扣：<span style="color: #c30;">${cd.discount }</span>折</li>
	    </ul>
		<hr style="margin-left: 50px; height: 1px; color: #fff"/>
		<table class="tab">
			<tr>
				<td colspan="3">
					歌手：${cd.singer }
				</td>
			</tr>
			<tr>
				<td colspan="3">
				        版本：${cd.press }</a>
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
				<td>时长：${cd.tlength }</td>
				<td>材质：${cd.paper }</td>
			</tr>
		</table>
	</div>
  </div>
  
  
  <div id='formDiv'>
   <div class="sm">&nbsp;</div>
   <form action="<c:url value='/admin/AdminCdServlet'/>" method="post" id="form">
    <input type="hidden" name="method" id="method"/>
   	<input type="hidden" name="bid" value="${cd.bid }"/>
    <img align="top" src="<c:url value='/${cd.image_w }'/>" class="tp"/>
    <div style="float:left;">
	    <ul>
	    	<li>商品编号：${cd.bid }</li>
	    	<li>唱片名：　<input id="bname" type="text" name="bname" value="${cd.bname }" style="width:500px;"/></li>
	    	<li>当前价：<input id="currPrice" type="text" name="currPrice" value="${cd.currPrice }" style="width:50px;"/></li>
	    	<li>定价：　<input id="price" type="text" name="price" value="${cd.price }" style="width:50px;"/>
	    	折扣：<input id="discount" type="text" name="discount" value="${cd.discount }" style="width:30px;"/>折</li>
	    </ul>
		<hr style="margin-left: 50px; height: 1px; color: #dcdcdc"/>
		<table class="tab">
			<tr>
				<td colspan="3">
					歌手：　　<input id="singer" type="text" name="singer" value="${cd.singer }" style="width:150px;"/>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					版本：　<input id="press" type="text" name="press" value="${cd.press }" style="width:200px;"/>
				</td>
			</tr>
			<tr>
				<td colspan="3">发行时间：<input id="publishtime" type="text" name="publishtime" value="${cd.publishtime }" style="width:100px;"/></td>
			</tr>
			<tr>
				<td>版次：　　<input id="edition" type="text" name="edition" value="${cd.edition }" style="width:40px;"/></td>
				<td>歌数：　　<input id="sNum" type="text" name="sNum" value="${cd.sNum }" style="width:50px;"/></td>
				<td>字数：　　<input id="wordNum" type="text" name="wordNum" value="${cd.wordNum }" style="width:80px;"/></td>
			</tr>
			<tr>
				<td width="250px">演唱时间：<input id="printtime" type="text" name="printtime" value="${cd.printtime }" style="width:100px;"/></td>
				<td width="250px">时长：　　<input id="tlength" type="text" name="tlength" value="${cd.tlength }" style="width:30px;"/></td>
				<td>材质：　　<input id="paper" type="text" name="paper" value="${cd.paper }" style="width:80px;"/></td>
			</tr>
			<tr>
				<td>
					一级分类：<select name="pid" id="pid" onchange="loadChildren()">
						<option value="">==请选择1级分类==</option>
<c:forEach items="${parents }" var="parent">
  <option value="${parent.cid }" <c:if test="${cd.category.parent.cid eq parent.cid }">selected="selected"</c:if>>${parent.cname }</option>
</c:forEach>
					</select>
				</td>
				<td>
					二级分类：<select name="cid" id="cid">
						<option value="">==请选择2级分类==</option>
<c:forEach items="${children }" var="child">
  <option value="${child.cid }" <c:if test="${cd.category.cid eq child.cid }">selected="selected"</c:if>>${child.cname }</option>
</c:forEach>
					</select>
				</td>
				<td></td>
			</tr>
			<tr>
				<td colspan="2">
					<input onclick="editForm()" type="button" name="method" id="editBtn" class="btn" value="编　　辑">
					<input onclick="deleteForm()" type="button" name="method" id="delBtn" class="btn" value="删　　除">
				</td>
				<td></td>
			</tr>
		</table>
	</div>
   </form>
  </div>

  </body>
</html>
