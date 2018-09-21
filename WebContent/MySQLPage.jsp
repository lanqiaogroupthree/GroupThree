<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.MySQLDao"%>
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
	<%
		MySQLDao mDao = new MySQLDao();
		int pageSize=4;//每页显示的记录
		int totalpages=mDao.getTotalPage(pageSize); //最大页数
		 String currentPage=request.getParameter("pageIndex"); //获得当前的页数，即第几页
	     if(currentPage==null){
	     	currentPage="1";
	     }
	     int pageIndex=Integer.parseInt(currentPage);
	     //添加逻辑判断，防止页数异常
	     if(pageIndex<1){
	     	pageIndex=1;
	     }else if(pageIndex>totalpages){
	     	pageIndex=totalpages;
	     }
	     List list= mDao.getAllempByPage(pageSize,pageIndex);  //返回特定页数的数据
	     pageContext.setAttribute("list", list);
	     pageContext.setAttribute("pageSize", pageSize);	     
	     pageContext.setAttribute("pageIndex", pageIndex);
	     pageContext.setAttribute("totalpages", totalpages);
	%>
	<!-- 循环显示员工的数据 -->
       <table border="1">
          	<tr>
             	<td>员工工号</td>
             	<td>员工姓名</td>
             	<td>员工工资</td>
          	</tr>
	<c:forEach items="${pageScope.list}" var="list">
     		<tr>
            	<td>${list.empno}</td>
            	<td>${list.ename}</td>
            	<td>${list.sal}</td>
            </tr>
    </c:forEach>
    </table> 
    	共${pageScope.totalpages}页  每页${pageScope.pageSize}条信息  页次${pageScope.pageIndex}/${pageScope.totalpages}页
    	<%-- <c:if test="${pageScope.pageIndex > 1}">
    		<a href="MySQLPage.jsp?pageIndex=1">首页</a> 
			<a href="MySQLPage.jsp?pageIndex=${pageScope.pageIndex-1}">上一页</a>
		</c:if>
		<c:if test="${pageScope.pageIndex < pageScope.totalpages}">
			<a href="MySQLPage.jsp?pageIndex=${pageScope.pageIndex+1}">下一页</a>
			<a href="MySQLPage.jsp?pageIndex=${pageScope.totalpages}">末页</a>
		</c:if> --%>
		<c:choose>
			<c:when test="${pageScope.pageIndex <= 1}">首页&nbsp;上一页
				<a href="MySQLPage.jsp?pageIndex=${pageScope.pageIndex+1}">下一页</a>
				<a href="MySQLPage.jsp?pageIndex=${pageScope.totalpages}">末页</a>
			</c:when>
			<c:when test="${pageScope.pageIndex >= pageScope.totalpages}">
				<a href="MySQLPage.jsp?pageIndex=1">首页</a> 
				<a href="MySQLPage.jsp?pageIndex=${pageScope.pageIndex-1}">上一页</a>下一页&nbsp;末页
			</c:when>
			<c:otherwise>
				<a href="MySQLPage.jsp?pageIndex=1">首页</a> 
				<a href="MySQLPage.jsp?pageIndex=${pageScope.pageIndex-1}">上一页</a>
				<a href="MySQLPage.jsp?pageIndex=${pageScope.pageIndex+1}">下一页</a>
				<a href="MySQLPage.jsp?pageIndex=${pageScope.totalpages}">末页</a>
			</c:otherwise>
		</c:choose>
  </body>
</html>