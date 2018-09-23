package three.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import three.entity.Admin;
import three.service.UserService;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping("/login")
	public String login(Admin admin,HttpServletRequest request) {
		Admin resultadmin = userService.login(admin);
		
		if(resultadmin==null) {
			request.setAttribute("admin", admin);
			return "../../login";
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("admin", resultadmin);
			System.out.println(resultadmin);
			return "redirect:/index.do?skip=index";
		}
	}
	@RequestMapping("/modiUserPWD")
	public String modiUserPWD(String pwdTwice,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Admin admin = (Admin)session.getAttribute("admin");
		if(userService.modiUserPWD(new Admin(admin.getAid(),pwdTwice))) {
			return "../../login";
		}else {
			return "index";
		}
	}
}
