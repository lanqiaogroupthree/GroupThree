<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	   <li><a href="${pageContext.request.contextPath}/index.do?skip=index" class="index_on"></a></li>
	   <li><a href="${pageContext.request.contextPath}role/role_list.html" class="role_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}/index.do?skip=admin" class="admin_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}fee/fee_list.html" class="fee_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}account/account_list.html" class="account_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}service/service_list.html" class="service_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}bill/bill_list.html" class="bill_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}report/report_list.html" class="report_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}user/user_info.html" class="information_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}user/user_modi_pwd.html" class="password_off"></a></li>
	</ul>
</body>
</html>