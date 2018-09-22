package three.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import three.entity.Admin;
import three.mapper.UserMapper;
import three.service.UserService;
@Service("UserService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;
	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		return userMapper.login(admin);
	}
}
