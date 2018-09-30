
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
function focusObj(id){
	id.style.backgroundColor="#FFCC80"
}
function newPwd(){
	var pwd2 = document.getElementById("newpwd2").value;
	var pwd1 = document.getElementById("newpwd1").value;
	if(pwd1 == pwd2){
		return true;
	}else{
		alert("两个输入密码不一致!");
		return false;
	}
		
}
function showDetail(flag, a) {
    var detailDiv = a.parentNode.getElementsByTagName("div")[0];
    if (flag) {
        detailDiv.style.display = "block";
    }
    else
        detailDiv.style.display = "none";
}
//重置密码
function resetPwd() {
    alert("请至少选择一条数据！");
    //document.getElementById("operate_result_info").style.display = "block";
}
//删除
function deleteAdmin() {
    var r = window.confirm("确定要删除此管理员吗？");
    alert(r);
    if(r){
    	return true;
    }else return false;
}
//全选
function selectAdmins(inputObj) {
    var inputArray = document.getElementById("datalist").getElementsByTagName("input");
    for (var i = 1; i < inputArray.length; i++) {
        if (inputArray[i].type == "checkbox") {
            inputArray[i].checked = inputObj.checked;
        }
    }
}