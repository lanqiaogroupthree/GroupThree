package three.service;

import three.entity.Admin;

public interface UserService {
	public Admin login(Admin admin);
	public boolean modiUserPWD(Admin admin);
}
