	function focusClick(id){
		id.style.backgroundColor ="#FFCC80";
	}

	function focusCheckuser(id){
		var user = id.value;
		var userC = document.getElementById("userC");
		var reg = /^[A-z0-9]{3,10}$/;
		if(user==""){
			userC.innerHTML = "输入为空";
			return false;
		}else{
			if(reg.test(user)){
				id.style.backgroundColor = "#FFF";
				userC.innerHTML = "√";
				return true;
			}else{
				userC.innerHTML = "输入有误，请再试一次";
				return false;
			}
		}
	}
	function focusCheckpwd(id){
		var pwd = id.value;
		var pwdC = document.getElementById("pwdC");
		var reg = /^[A-z0-9]{1,16}$/;
		if(pwd==""){
			pwdC.innerHTML = "输入为空";
			return false;
		}else{
			if(reg.test(pwd)){
				id.style.backgroundColor = "#FFF";
				pwdC.innerHTML = "√";
				return true;
			}else{
				pwdC.innerHTML = "密码错误，请重新输入";
				return false;
			}
		}
	}
	function beforeSubmit(){
		var user = document.getElementById("aaccount").value;
		var pwd = document.getElementById("apwd").value;
		var reg1 = /^[A-z0-9]{3,10}$/;
		var reg2 = /^[A-z0-9]{1,16}$/;
		if((reg1.test(user))&&(reg2.test(pwd))){
			//window.alert("输入正确！");
			return true;
		}else{
			window.alert("输入错误！");
			return false;
		}

	}
	
