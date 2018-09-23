package three.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class IndexController {
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
			case "user_modi":
				return "user/user_modi_pwd";
			default:
				return "user/user_info";
		}
	}
}
