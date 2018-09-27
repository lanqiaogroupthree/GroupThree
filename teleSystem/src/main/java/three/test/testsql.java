package three.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import three.entity.Admin;
import three.entity.Role;
import three.mapper.RoleMapper;
import three.service.impl.AdminServiceImpl;
@RunWith    //表示继承了SpringJUnit4ClassRunner类
(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class testsql {
	@Resource
	private three.mapper.UserMapper UserMapper;
	@Resource
	private three.mapper.RoleMapper roleMapper;
	@Resource
	private three.service.AdminService adminService;
	/**
	 * 
	 */
	@Test
	public void selectRoleByridtest() {
//		powerMapper.insertRoleByrid("2222");
		List<Admin> selectAdmin = adminService.selectAdmin();
//		int ltst = roleMapper.deleteRoleByrid(8);
//		Role role = powerMapper.selectRoleByrid(1);
		for(Admin a:selectAdmin) {
			System.out.println(a);
		}
		//System.out.println(selectAdmin);
	}
}
