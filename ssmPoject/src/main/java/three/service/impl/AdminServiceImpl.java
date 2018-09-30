package three.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import three.mapper.AdminMapper;
import three.mapper.PowMapper;
import three.pojo.Admin;
import three.pojo.Power;
import three.pojo.Role;
import three.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	public AdminMapper adminMapper;
	@Autowired
	public PowMapper powMapper;
	
	public Admin loginAdmin(Admin admin) {
		// TODO Auto-generated method stub
		Admin resultAdmin = adminMapper.loginAdmin(admin);
		if(resultAdmin != null) {
			//查询所有的角色
			List<Role> lsrole = powMapper.selectRoleByaid(resultAdmin.getAid());
			//查询所有的权限
			List<Power> lspower = powMapper.selectAllPowerByAid(resultAdmin.getAid());
			resultAdmin.setArole(lsrole);
			resultAdmin.setAroles(lsrole);
			resultAdmin.setApower(lspower);
		}

		return resultAdmin;
	}
	@Override
	public boolean updateAdminPwd(Admin admin) {
		// TODO Auto-generated method stub
		if(adminMapper.updateAdminPwd(admin)>0) {
			return true;
		}else return false;
	}

}
