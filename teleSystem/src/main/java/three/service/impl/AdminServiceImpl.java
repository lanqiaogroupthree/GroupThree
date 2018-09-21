package three.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import three.entity.Admin;
import three.mapper.AdminMapper;
import three.service.AdminService;
@Service("AdminService")
public class AdminServiceImpl implements AdminService {
	@Resource
	private AdminMapper adminMapper;
	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		return adminMapper.login(admin);
	}
}
