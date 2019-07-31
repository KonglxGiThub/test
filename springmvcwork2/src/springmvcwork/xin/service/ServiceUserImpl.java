package springmvcwork.xin.service;

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



}
