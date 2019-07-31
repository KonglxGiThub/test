package springJdcbTransaction.controller;

import java.util.List;

import springJdcbTransaction.service.IUserService;
import springJdcbTransaction.vo.MVCUSER;

public class UserController {
	private IUserService userServiceImpl;
	
	public IUserService getUserServiceImpl() {
		return userServiceImpl;
	}


	public void setUserServiceImpl(IUserService userServiceImpl) {
		this.userServiceImpl = userServiceImpl;
	}


	public boolean addUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return userServiceImpl.addUser(user);
	}

	
	public boolean deleteUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return userServiceImpl.deleteUser(user);
	}


	public boolean updateUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return userServiceImpl.updateUser(user);
	}

	
	public MVCUSER findUserById(MVCUSER user) {
		// TODO Auto-generated method stub
		return userServiceImpl.findUserById(user);
	}

	
	public List<MVCUSER> showAllUser() {
		// TODO Auto-generated method stub
		return userServiceImpl.showAllUser();
	}
}
