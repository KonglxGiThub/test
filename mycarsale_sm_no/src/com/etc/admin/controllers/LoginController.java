package com.etc.admin.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.etc.admin.models.CarUser;
import com.etc.admin.services.IUserService;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
@RequestMapping("/user/")
public class LoginController {
	//基本用value，引用类型用name，userService表示UserServiceImpl实现类默认类名首字母小写
	@Resource(name="userServiceImpl")
	private IUserService service;
	
	public IUserService getService() {
		return service;
	}

	public void setService(IUserService service) {
		this.service = service;
	}
	//退出到登陆页面，并注销session
	@RequestMapping("quitTologinSession.action")
	public String quitTologinSession(CarUser user,HttpServletRequest request){
		//System.out.println(user.getUsername()+user.getPassword()+user.getSex()+user.getLoginid());
		request.getSession().invalidate();
		return "forward:loginview.action";
	}
	
	//管理员更新页面提交
	@RequestMapping("updateManagerSubmit.action")
	public String updateManagerSubmit(CarUser user){
		//System.out.println(user.getUsername()+user.getPassword()+user.getSex()+user.getLoginid());
		boolean falg = service.updateManager(user);
		System.out.println(falg);
		if(falg){
			return "forward:managerview.action";
		}
		return "updateManager";
	}
	
	//管理员更新页面
	@RequestMapping("updateManagerView.action")
	public String updateManagerView(Integer id,String name,Integer age,String sex,String pass,String type,Model model){
		model.addAttribute("loginid",id );
		model.addAttribute("username",name );
		model.addAttribute("age",age );
		model.addAttribute("sex",sex );
		model.addAttribute("password",pass );
		model.addAttribute("type",type);
		return "updateManager";
	}
	
	//删除管理员
	@RequestMapping("deleteManager.action")
	public String deleteManager(int id){
		boolean falg = service.deleteManagerById(new CarUser(id));
		//System.out.println(falg);
		if(falg){
		return "forward:managerview.action";	
		}
		return "forward:managerview.action";
	}

	
	
	//添加管理员确认deleteManager.action
	@RequestMapping("addManagerSubmit.action")
	public String addManagerSubmit(CarUser user){
		boolean falg = service.insertManager(user);
		if(falg){
		return "forward:managerview.action";	
		}
		return "addManager";
	}

	//验证登录名重不重复ajax验证技术
	@RequestMapping("checkmanagerpass.action")
	@ResponseBody
	public Map<String,Object> checkpass(CarUser user,Model model,HttpServletRequest request){

		Map<String,Object> map = new HashMap<String,Object>();
		List<CarUser> managerList = service.selectManageAll();

		if(	request.getParameter("name")!=null && managerList!=null){
			for(CarUser u:managerList){

				//数据库里的表里的name列不能为空，否则汇报空指针异常
				if((u.getUsername()).equals(request.getParameter("name"))){
					map.put("msg","用户已注册");
					return map;
				}
			}
		}
		
		map.put("msg","用户可用");
		return map;
	}
	
	//addManagerSubmit.action
	@RequestMapping("addManagerView.action")
	public String addManagerView(){
		return "addManager";
	}
	//进入管理员维护页面
	@RequestMapping("managerview.action")
	public String manager(Model model){		
		List<CarUser> manageList=service.selectManageAll();
		model.addAttribute("manageList", manageList);
		return "manage";
	}

	
	//密码修改确定
	@RequestMapping("updatepassview.action")
	public String updatePassview(String newpassword2,HttpServletRequest request, HttpServletResponse response) {
			HttpSession session = request.getSession();
			//System.out.println(newpassword2+"=============================");
			CarUser c = (CarUser)session.getAttribute("caruser");
	
			boolean f = service.updatePass(new CarUser(c.getLoginid(),newpassword2));
			//System.out.println(f+"========================="+c.getLoginid());
			if(f){
				return "welcome";	
			}
			return "updateUserPassword";
	}
	
	@RequestMapping("loginview.action")
	public String loginview(CarUser user) {
		
			return "login";
	}
	
	@RequestMapping("updatepasssuccess.action")
	public String updatepasssuccessview(CarUser user) {
		
			return "updateUserPassword";
	}

	//登录验证
		@RequestMapping("userlogin.action")
		public String login(CarUser user,Model model,HttpServletRequest request, HttpServletResponse response) {
			CarUser u = service.selectBynameAndId(user);
			
			if(u!=null){
				if(user.getType().equals(u.getType())){
				//需要HttpServletRequest request, HttpServletResponse response
				HttpSession session = request.getSession();
				session.setAttribute("caruser", u);
				return "index";}
				else{
					model.addAttribute("msg","权限不zu");
					return "login";
				}
			}
			model.addAttribute("msg","用户名或密码不正确");
			return "login";
		}
}
