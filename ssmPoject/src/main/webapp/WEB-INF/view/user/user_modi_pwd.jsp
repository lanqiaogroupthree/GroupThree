<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/global_color.css" /> 
        <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>  
        <script src="${pageContext.request.contextPath}/js/login.js"></script>
              
</head>
    <body>
    
	  	<%if("false".equals(request.getAttribute("oldpwd"))){%>
			alert("旧密码密码错误!");
		<%}%>
    
        <!--Logo区域开始-->
        <div id="header">
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="logo" class="left"/>
            <a href="../index.jsp">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">
             <jsp:include  page="../header.jsp"/>    <!-- 显示头部信息  --> 
        </div>
        <!--导航区域结束-->
        <div id="main">      
            <!--保存操作后的提示信息：成功或者失败-->      
            <div id="save_result_info" class="save_success">保存成功！</div><!--保存失败，旧密码错误！-->
            <form action="${pageContext.request.contextPath}/admin/updatePwd.do" method="post" onsubmit="return newPwd()" class="main_form">
                <div class="text_info clearfix" ><span>旧密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200" id="pwd" name="oldpwd" onfocus="focusObj(this)" onblur="oldPwd(this)"/><span class="required">*</span>
                	<div class="validate_msg_medium" ><span id="oldpwdEr"></span></div>
                </div>
                <div class="text_info clearfix" ><span>新密码：</span></div>
                <div class="input_info">
                    <input type="password"  class="width200" name="newpwd1"  id ="pwd11" onfocus="focusObj(this)" onblur="newpwdA(this)" /><span class="required">*</span>
                    <div class="validate_msg_medium" ><span id="newpwd1"></span></div>
                </div>
                <div class="text_info clearfix"><span>重复新密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200" name="newpwd2" id ="pwd22" onfocus="focusObj(this)" onblur="newpwdB(this)"/><span class="required">*</span>
                    <div class="validate_msg_medium" ><span id="newpwd2"></span></div>
                </div>
                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save"  />
                    <input type="reset" value="取消" class="btn_save" />
                </div>
            </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
           
        </div>
    </body>
</html>