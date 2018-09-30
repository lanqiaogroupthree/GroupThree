<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul id="menu">
	   
	   <li><a href="${pageContext.request.contextPath}/index.do?skip=index" class="index_off"></a></li>
	   <c:forEach items="${admin.apower }" var="power">
	   		<li><a href="${pageContext.request.contextPath}/index.do?skip=${power.pskip}" class="${power.pskip}_off"></a></li>
	   </c:forEach>
	   <li><a href="${pageContext.request.contextPath}/index.do?skip=user_info" class="information_off"></a></li>
	   <li><a href="${pageContext.request.contextPath}/index.do?skip=user_modi" class="password_off"></a></li>
	</ul>
</body>
</html>