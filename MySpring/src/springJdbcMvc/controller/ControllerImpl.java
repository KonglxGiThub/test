package springJdbcMvc.controller;

import java.util.List;

import springJdbcMvc.service.IService;
import springJdbcMvc.vo.MVCUSER;

public class ControllerImpl {
	private IService serviceImpl;
	

	public IService getServiceImpl() {
		return serviceImpl;
	}


	public void setServiceImpl(IService serviceImpl) {
		this.serviceImpl = serviceImpl;
	}


	public boolean insertUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return serviceImpl.insertUser(user);
	}


	public boolean delUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return serviceImpl.delUser(user);
	}


	public boolean updateUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return serviceImpl.updateUser(user);
	}


	public List<MVCUSER> listUser() {
		// TODO Auto-generated method stub
		return serviceImpl.listUser();
	}
	public MVCUSER user(MVCUSER user) {
		// TODO Auto-generated method stub
		return serviceImpl.user(user);
	}
}
