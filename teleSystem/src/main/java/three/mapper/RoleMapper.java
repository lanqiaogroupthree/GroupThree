package three.mapper;

import three.entity.Role;

public interface RoleMapper {
	public Role selectRoleByrid(Integer rid);
	public int deleteRoleByrid(Integer rid);
	public int insertRoleByrid(String rname);
	public int updateRoleByrid(Role role);
}
