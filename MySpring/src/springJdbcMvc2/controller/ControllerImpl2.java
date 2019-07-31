package springJdbcMvc2.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import springJdbcMvc2.vo.MVCUSER;
import springJdbcMvc2.service.IService;
@Component
public class ControllerImpl2 {
	@Resource(name="serviceImpl")
	private IService serviceImpl;
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
