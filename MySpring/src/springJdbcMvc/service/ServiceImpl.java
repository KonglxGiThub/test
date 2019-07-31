package springJdbcMvc.service;

import java.util.List;
import springJdbcMvc.dao.IDao;
import springJdbcMvc.vo.MVCUSER;

public class ServiceImpl implements IService{
	private IDao dao;

	public IDao getDao() {
		return dao;
	}

	public void setDao(IDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean insertUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.insertUser(user);
	}

	@Override
	public boolean delUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.delUser(user);
	}

	@Override
	public boolean updateUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.updateUser(user);
	}

	@Override
	public List<MVCUSER> listUser() {
		// TODO Auto-generated method stub
		return dao.listUser();
	}

	@Override
	public MVCUSER user(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.user(user);
	}



}
