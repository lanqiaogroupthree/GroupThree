package three.mapper;

import java.util.List;

import three.entity.Admin;

public interface UserMapper {
	/**
	 * 登陆
	 * @param admin
	 * @return
	 */
	public Admin login(Admin admin);
	/**
	 * 根据用户id查询权限
	 * @return
	 */
	public List<String> selectUserPowerByAid(Integer aid);
	/**
	 * 修改用户密码
	 * @param apwd
	 * @return
	 */
	public int modiUserPWD(Admin admin);
	/**
	 * 查询所有admin
	 * @return
	 */
	public List<Admin> selectAdmin();
	/**
	 * 通过aid查询rid
	 * @param aid
	 * @return
	 */
	public List<String> selectRidByaid(Integer aid);
}
