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
        <script language="javascript" type="text/javascript">
            //保存成功的提示消息
            function showResult() {
                showResultDiv(true);
                window.setTimeout("showResultDiv(false);", 2000);
            }
            function showResultDiv(flag) {
                var divResult = document.getElementById("save_result_info");
                if (flag)
                    divResult.style.display = "block";
                else
                    divResult.style.display = "none";
            }
        </script>
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
            <div id="save_result_info" class="save_success">保存成功！</div>
            <form action="../../servlet/admin_modi2Servlet" method="get" class="main_form">
            		<div class="text_info clearfix"><span>账号ID：</span></div>
                    <div class="input_info">
                        <input type="text" readonly="readonly" name="myid" value="${ad.id }"/>
                        <span class="required">*</span>
                        <div class="validate_msg_long "></div>
                    </div>
                    <div class="text_info clearfix"><span>姓名：</span></div>
                    <div class="input_info">
                        <input type="text" name="myname" value="${ad.name }" />
                        <span class="required">*</span>
                        <div class="validate_msg_long"></div>
                    </div>
                    <div class="text_info clearfix"><span>管理员账号：</span></div>
                    <div class="input_info">
                    	<input type="text" readonly="readonly" class="readonly" value="${ad.account}"  />
                    </div>
                    <div class="text_info clearfix"><span>电话：</span></div>
                    <div class="input_info">
                        <input type="text" name="mytel" value="${ad.tel}"  />
                        <span class="required">*</span>
                        <div class="validate_msg_long "></div>
                    </div>
                    <div class="text_info clearfix"><span>Email：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" name="myemail" value="${ad.email}"/>
                        <span class="required">*</span>
                        <div class="validate_msg_medium "></div>
                    </div>
                    <div class="text_info clearfix"><span>管理员权限：</span></div>
                     <div class="input_info ">
                         <select  name="adorit">
                       	<option value="1" >下级管理员</option> 
                        <option value="2" >中级管理员</option>
                        <option value="3" >高级管理员</option> 
                      	<option value="4" >董事长</option>
                         </select>
                         <span class="required">*</span>
                   	</div>
                    <div class="button_info clearfix">
                        <input type="submit" value="保存" class="btn_save" onclick="showResult();" />
                        <a href="admin_list.jsp"><input type="button" value="取消" class="btn_save" /></a>
                    </div>
                </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
           
        </div>
    </body>
</html>