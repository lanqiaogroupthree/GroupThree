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
			return "index";
		}
	}
	@RequestMapping("/index")
	public String index(String skip) {
		System.out.println(skip);
		switch(skip) {
			case "index":
				return "index";
			case "role":
				return "role/role_list";
			case "admin":
				return "admin/admin_list";
			case "bill":
				return "bill/bill_list";
			case "account":
				return "account/account_list";
			case "fee":
				return "fee/fee_list";
			case "report":
				return "report/report_list";
			case "service":
				return "service/service_list";
			case "user":
				return "user/user_info";
			default:
				return "user/user_modi_pwd";
		}
	}
}
