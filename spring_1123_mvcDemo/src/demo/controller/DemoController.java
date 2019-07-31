package demo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import demo.service.IUserService;
@Controller
public class DemoController {
	@Resource(name="userServiceImpl")
	private IUserService service;

	public IUserService getService() {
		return service;
	}

	public void setService(IUserService service) {
		this.service = service;
	}
	
	public void demoAdd(){
		service.add();
	}

}
