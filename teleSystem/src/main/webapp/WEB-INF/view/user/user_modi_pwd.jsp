<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/styles/global.css" />
	<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/styles/global_color.css" />
	
	<script type="text/JavaScript">
	  //获取url中的参数
	  $(function(){
	    var userName = window.location.href;
	    var aa = userName.indexOf("=");
	      console.log(userName);
	    if (aa == -1)
	      return "";
	    userName=userName.substring(aa+1);
	    //给hidden赋值并显示
	    $("#userName").val(userName).attr("type","text");
	    //ajax请求修改密码
	    var rePassword = $("#pwdTwice").val();
	    //6到15位字母或数字
	    var reg=/^[0-9a-zA-Z]{6,15}$/;
	    //新密码校验
	    $("#pwdNew").blur(function(){
	      $("#msg").css("display","none");
	      var pwdNew = $("#pwdNew").val();
	      if(pwdNew==""||pwdNew==null){
	       $("#msg").html("请输入新密码！").css("display","block");
	      }elseif(!reg.test(pwdNew)){
	       $("#msg").html("密码格式不正确,请重新输入！").css("display","block");
	      }
	    });
	    //重复密码校验
	    $("#pwdTwice").blur(function(){
	      var newPass = $("#pwdNew").val();
	      var repPass = $("#pwdTwice").val();
	      if(newPass != repPass){
	       $("#msg").html("两次输入密码不一致,请重输！").css("display","block");
	      }
	    });
	    //表单提交前校验
	    $("#updateBtn").click(function(){
	      var flag = true;
	      var pwdNew = $("#pwdNew").val();
	      var pwdTwice = $("#pwdTwice").val();
	      var reg1=/^[0-9a-zA-Z]{6,15}$/;
	      if(!reg1.test(pwdNew)||pwdNew!=pwdTwice||pwdNew ==""||pwdNew==null){
	       flag = false;
	      }
	      if(flag){
	       $.ajax({
	         url:"/modiUserPWD.do?userName="+userName,
	         type:"POST",
	         async:false,
	         //data:$("#fm").serialize(), //表单数据序列化, 可以对form表单进行序列化，从而将form表单中的所有参数传递到服务端。
	         success:function(data){
	         //json字符串转为json对象
	         var jsonObj=eval("("+data+")");
	         if(jsonObj.success != null){
	           alert(jsonObj.success);
	           window.location.href="/login.do" rel="external nofollow" ;
	         }else{
	           alert(jsonObj.failure);
	         }
	       },
	       error:function(e){
	         alert("请求出错！");
	       }
	       });
	      }   
	});
	  });

	</script>
	
	
</head>
<body>
	<!--Logo区域开始-->
        <div id="header">
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="logo" class="left"/>
            <a href="#">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">
            <ul id="menu">
                <jsp:include page="../header.jsp"></jsp:include>
            </ul>
        </div>
        <!--导航区域结束-->
        <div id="main">      
            <!--保存操作后的提示信息：成功或者失败-->      
            <div id="save_result_info" class="save_success">保存成功！</div><!--保存失败，旧密码错误！-->
            <form action="modiUserPWD.do" method="post" class="main_form">
                <div class="text_info clearfix"><span>旧密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200"  name="pwdOld"/><span class="required">*</span>
                    <div class="validate_msg_medium">30长度以内的字母、数字和下划线的组合</div>
                </div>
                <div class="text_info clearfix"><span>新密码：</span></div>
                <div class="input_info">
                    <input type="password"  class="width200" name="pwdNew"/><span class="required">*</span>
                    <div class="validate_msg_medium">30长度以内的字母、数字和下划线的组合</div>
                </div>
                <div class="text_info clearfix"><span>重复新密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200"  name="pwdTwice"/><span class="required">*</span>
                    <div class="validate_msg_medium">两次新密码必须相同</div>
                </div>
                <div class="button_info clearfix">
                    <input type="submit" value="保存" name="updateBtn" class="btn_save" />
                    <input type="button" value="取消" class="btn_save" />
                </div>
            </form> 
        </div>
        <!--主要区域结束-->
        <div id="footer">
           
        </div>
</body>
</html>