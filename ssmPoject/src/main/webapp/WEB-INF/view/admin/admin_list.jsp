<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/global_color.css" /> 
        <script src="${pageContext.request.contextPath}/js/admin_add.js"></script>  
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="logo" class="left"/>
            <a href="${pageContext.request.contextPath}/WEB-INF/view/admin.jsp">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">                        
             <jsp:include  page="../header.jsp"/>    <!-- 显示头部信息  -->             
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">
                <!--查询-->
                <form action="" method="get">
               	<div class="search_add">
                    <div>
                      	  管理员级别：
                        <select id="selModules" name="adorit" class="select_search">
                            <option value="0">全部</option>
                            <option value="1">低级管理员</option>
                            <option value="2">中级管理员</option>
                            <option value="3">高级管理员</option>
                            <option value="4">超级管理员</option>
                        </select>
                    </div>
                    <div><input type="submit" value="搜索" class="btn_search"/></div>
                    <input type="button" value="密码重置" class="btn_add" onclick="resetPwd();" />
                    <input type="button" value="增加" class="btn_add" onclick="location.href='admin_add.jsp';" />
                </div>
                </form>
                <!--数据区域：用表格展示数据-->     
                <div id="data">            
                    <table id="datalist">
                        <tr>
                            <th class="th_select_all">
                                <input type="checkbox" onclick="selectAdmins(this);" />
                                <span>全选</span>
                            </th>
                            <th>管理员ID</th>
                            <th>姓名</th>
                            <th>账号名</th>
                            <th>电话</th>
                            <th>电子邮件</th>
                            <th>注册日期</th>
                            <th class="width100">权限级别</th>
                            <th></th>
                        </tr>
                        <c:forEach items="${sessionScope.al}" var="a">                    
	                        <tr>
	                            <td><input type="checkbox" /></td>
	                            <td>${a.id}</td>
	                            <td>${a.name}</td>
	                            <td>${a.account}</td>
	                            <td>${a.tel}</td>
	                            <td>${a.email}</td>
	                            <td>${a.date}</td>
	                            <td>${a.dorit}</td>
	                            <td class="td_modi">
	                                <input type="button" value="修改" class="btn_modify" 
	                                onclick="location.href='../../servlet/admin_modiServlet?id=${a.id}&dorit=${a.dorit}'" />
	                                <input type="submit" value="删除" class="btn_delete" 
	                                onclick="location.href='../../servlet/admin_delServlet?id=${a.id}'"/>
	                               
	                            </td>
	                        </tr>
                        </c:forEach> 
                        <%session.removeAttribute("al");%>  
                        </table>
                </div>
                
                <div id="footer">
          			<div id="pages">
	        	        <a href="#">上一页</a>
	                    <a href="#" class="current_page">1</a>
	                    <a href="#">2</a>
	                    <a href="#">3</a>
	                    <a href="#">4</a>
	                    <a href="#">5</a>
	                    <a href="#">下一页</a>
	        		</div>
        		</div>
        		</div> 
        <!--主要区域结束-->
        
    </body>
    
</html>