package springproperty.mvc.controller;

import springproperty.mvc.service.IUserService;

public class Controoller {
	private	IUserService service;

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
