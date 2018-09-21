package three.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import three.entity.Admin;
import three.service.AdminService;

@Controller
public class AdminController {
	@Resource
	private AdminService adminService;
	
	@RequestMapping("/showLogin.do")
	public String showLogin() {
		return "login";
	}
	@RequestMapping("/login")
	public String login(Admin admin,HttpServletRequest request) {
		Admin resultadmin = adminService.login(admin);
		System.out.println(admin.getAaccount());
		System.out.println(admin.getApwd());
		if(resultadmin==null) {
			System.out.println("失败");
			request.setAttribute("admin", admin);
			return "login";
		}else {
			System.out.println("成功");
			return "success";
		}
	}
	
}
