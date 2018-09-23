package three.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import three.entity.Admin;
import three.mapper.RoleMapper;
import three.mapper.UserMapper;
import three.service.UserService;
@Service("UserService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;
	private RoleMapper roleMapper;
	
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		Admin adminuser = userMapper.login(admin);
		List<String> ltst = userMapper.selectUserPowerByAid(adminuser.getAid());
		adminuser.setApower(ltst);
		return adminuser;
	}
	
	public boolean modiUserPWD(Admin admin) {
		// TODO Auto-generated method stub
		if(userMapper.modiUserPWD(admin) <= 0) {
			return false;
		}else {
			return true;
		}
	}
}
