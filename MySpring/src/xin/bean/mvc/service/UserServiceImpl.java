package xin.bean.mvc.service;

import xin.bean.mvc.dao.IUserDao;

public class UserServiceImpl implements IUserService {
	private IUserDao dao;
	public IUserDao getDao() {
		return dao;
	}

	public void setDao(IUserDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean add() {
		// TODO Auto-generated method stub
		System.out.println("add");
		dao.add();
		return false;
	}

	@Override
	public boolean del() {
		// TODO Auto-generated method stub
		System.out.println("del");
		return false;
	}

	@Override
	public boolean update() {
		// TODO Auto-generated method stub
		System.out.println("update");
		return false;
	}

	@Override
	public void finf() {
		System.out.println("finf");
	}
	

}
