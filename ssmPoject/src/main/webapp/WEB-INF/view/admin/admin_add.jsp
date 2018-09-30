<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <div id="save_result_info" class="save_success">保存成功！</div>
            <form action="" method="get" onsubmit="return newPwd()" class="main_form">
                    <div class="text_info clearfix"><span>姓名：</span></div>
                    <div class="input_info">
                        <input type="text" name="aname" />
                        <span class="required">*</span>
                        <div class="validate_msg_long"></div>
                    </div>
                    <div class="text_info clearfix"><span>管理员账号：</span></div>
                    <div class="input_info">
                        <input type="text" name="aaccount" />
                        <span class="required">*</span>
                        <div class="validate_msg_long"></div>
                    </div>
                    <div class="text_info clearfix"><span>密码：</span></div>
                    <div class="input_info">
                        <input type="password"  id="newpwd1" name="apwd1" />
                        <span class="required">*</span>
                        <div class="validate_msg_long "></div>
                    </div>
                    <div class="text_info clearfix"><span>重复密码：</span></div>
                    <div class="input_info" >
                        <input type="password" id="newpwd2" name="apwd2" />
                        <span class="required">*</span>
                        <div class="validate_msg_long"></div>
                    </div>      
					<!-- <div class="text_info clearfix"><span>上传头像</span></div>
                    <div class="input_info">
                        <input type="file" name="userimg"  />
                        <span class="required">*</span>
                        <div class="validate_msg_long error_msg">图片大小400*400px</div>
                    </div>   -->
                    <div class="text_info clearfix"><span>电话：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" name="atel"/>
                        <span class="required">*</span>
                        <div class="validate_msg_medium"></div>
                    </div>
                    <div class="text_info clearfix"><span>Email：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" name="aemail"/>
                        <span class="required">*</span>
                        <div class="validate_msg_medium"></div>
                    </div>
                    <div class="text_info clearfix"><span>权限类型：</span></div>

                     <div class="input_info">
                         <select  name="adorit">
                         	<option value="1">下级管理员</option>
                         	<option value="2">中级管理员</option>
                         	<option value="3">高级管理员</option>
                         	<option value="4">董事长</option>
                         </select>
                         <span class="required">*</span>
                   	</div>
                        <div class="validate_msg_tiny"></div>
                    <div class="button_info clearfix">
                        <input type="submit" value="添加" class="btn_save" />
                        <input type="reset" value="取消" class="btn_save" />
                    </div>
                </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
           
        </div>
    </body>
</html>