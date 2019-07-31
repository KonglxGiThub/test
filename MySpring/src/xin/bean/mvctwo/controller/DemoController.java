package xin.bean.mvctwo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import xin.bean.mvctwo.service.IUserService;
//用于标注控制层组件（如struts中的action）、如果不输入id，则默认值当前类首字母小写
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
