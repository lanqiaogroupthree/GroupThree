<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>index</title>
	<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/styles/global.css" />
	<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/styles/global_color.css" />
</head>
<body>
	<body class="index">
        <!--导航区域开始-->
        <div id="index_navi">
            <!-- <ul id="menu">
                <li><a href="index.html" class="index_on"></a></li>
                <li><a href="role/role_list.html" class="role_off"></a></li>
                <li><a href="admin/admin_list.html" class="admin_off"></a></li>
                <li><a href="fee/fee_list.html" class="fee_off"></a></li>
                <li><a href="account/account_list.html" class="account_off"></a></li>
                <li><a href="service/service_list.html" class="service_off"></a></li>
                <li><a href="bill/bill_list.html" class="bill_off"></a></li>
                <li><a href="report/report_list.html" class="report_off"></a></li>
                <li><a href="user/user_info.html" class="information_off"></a></li>
                <li><a href="user/user_modi_pwd.html" class="password_off"></a></li>
            </ul> -->
            <jsp:include page="header.jsp"></jsp:include>
        </div>
    </body>
</body>
</html>