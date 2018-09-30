
			function focusObj(id){
				id.style.backgroundColor="#FFCC80"
			}

			function nameA(id){
				id.style.backgroundColor="#FFFFFF";
				var name = id.value;
				var nameEr = document.getElementById("nameEr");
				var rag = /^\w+$/;
				if(name == ""){
					nameEr.innerHTML = "账号不能为空！";
					nameEr.style.color="red";
					return false;
				}
				if(rag.test(name)){
					nameEr.innerHTML = "√";
					nameEr.style.color="green";
					return true;
				}else{
					nameEr.innerHTML ="用户名格式不对!";
					nameEr.style.color="red";
					return false
				}	
			}
			function pwdA(id){
				id.style.backgroundColor="#FFFFFF";
				var pwd = id.value;
				var pwdEr = document.getElementById("pwdEr");
				var reg = /^\w+$/ ;
				if(pwd==""){
					pwdEr.innerHTML = "密码不能为空！";
					pwdEr.style.color="red";
				}
				if(reg.test(pwd)){
					pwdEr.innerHTML = "√";
					pwdEr.style.color="green";
					return true;
				}else{
					pwdEr.innerHTML = "密码格式不对！";
					pwdEr.style.color="red";
					return false;
				}
				if(pwd.length < 6){
					pwdEr.innerHTML = "密码长度必须达到6个字符！";
					pwdEr.style.color="red";
					return false;
				}	
			}
			
			function oldPwd(id){
				id.style.backgroundColor="#FFFFFF";
				var pwd = id.value;
				var pwdEr = document.getElementById("oldpwdEr");
				var reg = /^\w+$/ ;
				if(pwd==""){
					pwdEr.innerHTML = "密码不能为空！";
					pwdEr.style.color="red";
					return false;
				}if(pwd.length < 6){
					pwdEr.innerHTML = "密码长度必须达到6个字符！";
					pwdEr.style.color="red";
					return false;
				}
				if(reg.test(pwd)){
					pwdEr.innerHTML = "√";
					pwdEr.style.color="green";
					return true;
				}else{
					pwdEr.innerHTML = "密码格式不对！";
					pwdEr.style.color="red";
					return false;
				}
					
			}
		/*	输入新密码格式*/
			function newpwdA(id){
				id.style.backgroundColor="#FFFFFF";
				var pwd = id.value;
				var pwdEr = document.getElementById("newpwd1");
				var reg = /^\w+$/ ;
				if(pwd==""){
					pwdEr.innerHTML = "密码不能为空！";
					pwdEr.style.color="red";
				}
				if(pwd.length < 6){
					pwdEr.innerHTML = "密码长度必须达到6个字符！";
					pwdEr.style.color="red";
					return false;
				}
				if(reg.test(pwd)){
					pwdEr.innerHTML = "√";
					pwdEr.style.color="green";
					return true;
				}else{
					pwdEr.innerHTML = "密码格式不对！";
					pwdEr.style.color="red";
					return false;
				}	
			}
			function newpwdB(id){
				id.style.backgroundColor="#FFFFFF";
				var pwd = id.value;
				var pwdEr = document.getElementById("newpwd2");
				var reg = /^\w+$/ ;
				if(pwd==""){
					pwdEr.innerHTML = "密码不能为空！";
					pwdEr.style.color="red";
				}
				if(pwd.length < 6){
					pwdEr.innerHTML = "密码长度必须达到6个字符！";
					pwdEr.style.color="red";
					return false;
				}
				if(reg.test(pwd)){
					pwdEr.innerHTML = "√";
					pwdEr.style.color="green";
					return true;
				}else{
					pwdEr.innerHTML = "密码格式不对！";
					pwdEr.style.color="red";
					return false;
				}	
			}
			/*确认密码的校验*/
			function newPwd(){
				var pwd2 = document.getElementById("pwd22").value;
				var pwd1 = document.getElementById("pwd11").value;
				if(pwd1 == pwd2){
					return true;
				}else{
					alert("两个输入密码不一致!");
					return false;
				}		
			}
			/*$(function(){
				$("#oldpwd").blur(function(){
					$.ajax({
						url:'../servlet/oldpwdServlet',
						Type:'get()',
						data:{pwd:'${param.oldpwd}'},
						success:function (result){
							if(result == "true"){
								$("#oldpwdEr").text("输入密码有误!")
							}else{
								$("#oldpwdEr").text("√")
							};
						}
					})
				})
			})*/
			
			
