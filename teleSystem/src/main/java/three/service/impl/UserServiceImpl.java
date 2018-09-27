package three.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import three.entity.Admin;
import three.entity.Role;
import three.mapper.RoleMapper;
import three.mapper.UserMapper;
import three.service.UserService;
@Service("UserService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;
	@Resource
	private RoleMapper roleMapper;
	
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		List<String> arole = new ArrayList<>();
		Admin adminuser = userMapper.login(admin);
		List<String> ltst = userMapper.selectUserPowerByAid(adminuser.getAid());
		List<String> ltrid = userMapper.selectRidByaid(adminuser.getAid());
		for(int i = 0;i < ltrid.size();i++) {
			Role role = roleMapper.selectRoleByrid(Integer.parseInt(ltrid.get(i)));
			arole.add(role.getRname());
		}
		adminuser.setApower(ltst);
		adminuser.setArole(arole);
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
