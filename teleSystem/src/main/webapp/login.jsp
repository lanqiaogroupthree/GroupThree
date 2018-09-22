<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/styles/global_color.css" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/loginCheck.js" ></script>
		<title>电信资费管理系统</title>
</head>
<body class="index">
        <div class="login_box">
            <table>
            	<form action="login.do" method = "post" onsubmit="return beforeSubmit()">
	                <tr>
	                    <td class="login_info">账号：</td>
	                    <td colspan="2"><input name="aaccount" id="aaccount" type="text" class="width150" onfocus="focusClick(this)" onblur="focusCheckuser(this)" value="${admin.aaccount }"/></td>
	                    <td class="login_error_info"><span class="required" id="userC"></span></td>
	                </tr>
	                <tr>
	                    <td class="login_info">密码：</td>
	                    <td colspan="2"><input name="apwd" id="apwd" type="password" class="width150" onfocus="focusClick(this)" onblur="focusCheckpwd(this)" value="${admin.apwd }"/></td>
	                    <td><span class="required" id="pwdC"></span></td>
	                </tr>
	                <tr>
	                    <!-- <td class="login_info">验证码：</td>
	                    <td class="width70"><input name="" type="text" class="width70" /></td>
	                    <td><img src="../images/valicode.jpg" alt="验证码" title="点击更换" /></td>  
	                    <td><span class="required">验证码错误</span></td>  -->             
	                </tr>            
	                <tr>
	                    <td></td>
	                    <td class="login_button" colspan="2">
	                    	<input type="image" name="submit" src="${pageContext.request.contextPath}/images/login_btn.png" />
	                    </td>    
	                    <td><span class="required"><!-- 用户名或密码错误，请重试 --></span></td>                
	                </tr>
                </form>
            </table>
        </div>
 </body>
</html>