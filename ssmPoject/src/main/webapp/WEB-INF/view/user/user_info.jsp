<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/css/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/css/global_color.css" />
<script src="${pageContext.request.contextPath}/js/user_info.js"></script>
</head>
<body>
	<!--Logo区域开始-->
	<div id="header">
		<img src="${pageContext.request.contextPath}/images/logo.png"
			alt="logo" class="left" /> <a href="../index.jsp">[退出]</a>
	</div>
	<!--Logo区域结束-->
	<!--导航区域开始-->
	<div id="navi">
		<jsp:include page="../header.jsp" />
		<!-- 显示头部信息  -->
	</div>
	<!--导航区域结束-->
	<!--主要区域开始-->
	<div id="main">
		<!--保存操作后的提示信息：成功或者失败-->
		<div id="save_result_info" class="save_success">保存成功！</div>
		<!--保存失败，数据并发错误！-->
		<form action="" method="post" onsubmit="return true" class="main_form">
			<div class="text_info clearfix">
				<span>管理员ID：</span>
			</div>
			<div class="input_info">
				<input type="text" readonly="readonly" class="readonly"
					value="${admin.aid}" />
			</div>

			<div class="text_info clearfix">
				<span>管理员账号：</span>
			</div>
			<div class="input_info">
				<input type="text" readonly="readonly" class="readonly"
					value="${admin.aaccount}" />
			</div>
			<div class="text_info clearfix">
				<span>账号角色：</span>
			</div>
			<div class="input_info">
				<input type="text" readonly="readonly" class="readonly"
					value="${admin.aroles}" />
			</div>
			<div class="text_info clearfix">
				<span>姓名：</span>
			</div>
			<div class="input_info">
				<input type="text" name="myname" value="${admin.aname}" /> <span
					class="required"></span>
				<div class="validate_msg_long">
					<span id="nameEr"></span>
				</div>
			</div>
			<div class="text_info clearfix">
				<span>电话：</span>
			</div>
			<div class="input_info">
				<input type="text" class="width200" name="mytel"
					value="${admin.atel}" />
				<div class="validate_msg_medium"></div>
			</div>
			<div class="text_info clearfix">
				<span>Email：</span>
			</div>
			<div class="input_info">
				<input type="text" class="width200" name="myemail"
					value="${admin.aemail}" />
				<div class="validate_msg_medium"></div>
			</div>
			<div class="text_info clearfix">
				<span>创建时间：</span>
			</div>
			<div class="input_info">
				<input type="text" readonly="readonly" class="readonly"
					value="${admin.adate}" />
			</div>
			<div class="button_info clearfix">
				<input type="submit" value="保存" class="btn_save"
					onclick="showResult();" /> <input type="button" value="取消"
					class="btn_save" />
			</div>
		</form>
	</div>
	<!--主要区域结束-->
	<div id="footer"></div>
</body>
</html>