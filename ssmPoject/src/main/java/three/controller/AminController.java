package three.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import three.pojo.Admin;
import three.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AminController {
	@Autowired
	AdminService adminService;	//自动注入AdminService
	//返回登陆信息
	@RequestMapping("/login")
	public String loginAdmin(Admin admin,HttpServletRequest request) {
		Admin resultAdmin = adminService.loginAdmin(admin);
		if(resultAdmin == null) {
			System.out.println("false");
			return "../../login";
		}
		HttpSession session = request.getSession();
		session.setAttribute("admin", resultAdmin);;
		return "redirect:/index.do?skip=index";
	}
	//修改密码
	@RequestMapping("/updatePwd")
	public String  updateAdminPwd(@RequestParam("oldpwd")String opwd,@RequestParam("newpwd1")String npwd,Map<String,String> map,HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(map.get("oldpwd"));
		Admin admin = (Admin)session.getAttribute("admin");
		if(admin.getApwd().equals(opwd)) {
			admin.setApwd(npwd);
			boolean b = adminService.updateAdminPwd(admin);
			if(b == true) {
				map.put("updatePwd", "success");
			}else {
				return "redirect:/index.do?skip=user_modi";
			}
		}else {
			map.put("oldpwd", "false");
			return "redirect:/index.do?skip=user_modi";
		}
		return "../../login";
	}
	//修改个人信息
	@RequestMapping("/updateAdmin")
	public String updateAdminInfo(Admin admin) {
		
		
		return "redirect:/index.do?skip=user_info";
	}
}
