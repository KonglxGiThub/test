package springmvcwork.xin.service;

import java.util.List;

import springmvcwork.xin.dao.IDaoUser;
import springmvcwork.xin.vo.MVCUSER;

public class ServiceUserImpl implements IServiceUser{
	private IDaoUser dao;
	
	public IDaoUser getDao() {
		return dao;
	}

	public void setDao(IDaoUser dao) {
		this.dao = dao;
	}

	@Override
	public boolean add(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.insert(user);
	}

	@Override
	public boolean updeateUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.updeateUser(user);
	}

	@Override
	public boolean deleteUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.deleteUser(user);
	}



	@Override
	public MVCUSER user(MVCUSER user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MVCUSER> selAllUser() {
		// TODO Auto-generated method stub
		return dao.selAllUser();
	}



}
