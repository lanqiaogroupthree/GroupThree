<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>

<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/css/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/css/global_color.css" />
<script src="${pageContext.request.contextPath}/js/login.js"></script>
</head>
<body class="index">
<script>
	  	<%if(request.getAttribute("updatePwd")=="success"){%>
			alert("修改密码成功!");
		<%}%>
		
</script>
	<div class="login_box">
		<form action="${pageContext.request.contextPath}/admin/login.do" method="post"
			onsubmit=" return true">
			<table>
				<tr>
					<td class="login_info">账号：</td>
					<td colspan="2"><input name="aaccount" type="text"
						class="width150" onfocus="focusObj(this)" onblur="nameA(this)" /></td>
					<td class="login_error_info" id="nameEr"><span
						class="required"></span></td>
				</tr>
				<tr>
					<td class="login_info">密码：</td>
					<td colspan="2"><input name="apwd" type="password"
						class="width150" onfocus="focusObj(this)" onblur="pwdA(this)" /></td>
					<td><span class="required" id="pwdEr"></span></td>
				</tr>
				<tr>
					<td></td>
					<td class="login_button" colspan="2"><input type="submit"
						value=""
						style="background: url('${pageContext.request.contextPath}/images/login_btn.png') no-repeat; height: 45px; width: 130px">
					</td>
					<td><span class="required"></span></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>