package three.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import three.entity.Admin;
import three.entity.Role;
import three.mapper.PowerMapper;
import three.mapper.RoleMapper;
import three.mapper.UserMapper;
import three.service.AdminService;
@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Resource
	private PowerMapper powerMapper;
	@Resource
	private RoleMapper roleMapper;
	@Resource
	private UserMapper userMapper;
	
	@Override
	public int insertAdmin(Admin admin) {
		// TODO Auto-generated method stub
		
		return 0;
	}

	@Override
	public int deleteAdmin(Integer aid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Admin> selectAdmin() {
		// TODO Auto-generated method stub
		List<String> selectRidByaid = new ArrayList<>();
		List<String> selectUserPowerByAid = new ArrayList<>();
		//new出对象，不然只是局部变量，存在栈中，储存不了值
		List<String> arole = new ArrayList<>();
		List<Admin> selectAdmin = userMapper.selectAdmin();
		//System.out.println(selectAdmin);
		for(int i = 0;i < selectAdmin.size(); i++) {
			selectRidByaid = userMapper.selectRidByaid(selectAdmin.get(i).getAid());
			selectUserPowerByAid = userMapper.selectUserPowerByAid(selectAdmin.get(i).getAid());
			
			for(int j = 0;j < selectRidByaid.size();j++) {
				Role role = roleMapper.selectRoleByrid(Integer.parseInt(selectRidByaid.get(j)));
				arole.add(role.getRname());
			}
			selectAdmin.get(i).setArole(arole);
			selectAdmin.get(i).setApower(selectUserPowerByAid);
		}
		return selectAdmin;
	}
//	public static void main(String[] args) {
//		AdminService adminService = new AdminServiceImpl();
//		adminService.selectAdmin();
//	}
}
