package three.service;

import java.util.List;

import three.entity.Admin;

public interface AdminService {
	public int insertAdmin(Admin admin);
	public int deleteAdmin(Integer aid);
	public int updateAdmin(Admin admin);
	public List<Admin> selectAdmin();
}
