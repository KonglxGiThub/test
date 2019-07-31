package hrms.controller;


import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hrms.service.admin.ILoginByAdminService;
import hrms.vo.AdminVo;
import hrms.vo.DepartmentsVo;
@Controller
@RequestMapping("/admin/")
public class LoginByAdminController {
	@Resource(name="loginByAdminServiceImpl")
	private ILoginByAdminService LoginByAdminService ;

	public ILoginByAdminService getLoginByAdminService() {
		return LoginByAdminService;
	}

	public void setLoginByAdminService(ILoginByAdminService loginByAdminService) {
		LoginByAdminService = loginByAdminService;
	}

	@RequestMapping("hello.action")
	public String hello(){
		return "welcome";
	}
	@RequestMapping("login.action")
	public String loginByAdmin(AdminVo admin,Model model){
	AdminVo adminVo = LoginByAdminService.loginByAdmin(admin);
		if(adminVo!=null){
			if(adminVo.getAdminLevel().equals(admin.getAdminLevel())){
				return "welcome";
			}else{
				model.addAttribute("msg", "用户权限不符");
				return "forward:index.action";	
			}

		}
		model.addAttribute("msg", "用户和密码不对");
		return "forward:index.action";
		
	}
	@RequestMapping("index.action")
	public String index(){

		return "login";
	}
	
}
