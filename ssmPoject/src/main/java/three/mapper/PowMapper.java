package three.mapper;

import java.util.List;

import three.pojo.Power;
import three.pojo.Role;



public interface PowMapper {
	//查询管理员的所有权限
	
	List<Role> selectRoleByaid(int aid);
	//根据角色查询所有的权限
	List<Power> selectAllPowerByAid(int aid);

}
