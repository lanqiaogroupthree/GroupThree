package three.service;

import three.pojo.Admin;

public interface AdminService {
	//登陆的方法
	Admin loginAdmin(Admin admin);
	//修改管理员密码
	boolean updateAdminPwd(Admin admin);

}
