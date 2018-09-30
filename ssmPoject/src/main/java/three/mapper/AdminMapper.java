package three.mapper;

import three.pojo.Admin;

public interface AdminMapper {
	//登陆获取信息
	public Admin loginAdmin(Admin admin);
	//修改管理员密码
	public int updateAdminPwd(Admin admin);
}
