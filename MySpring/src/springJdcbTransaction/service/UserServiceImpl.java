package springJdcbTransaction.service;

import java.util.List;

import springJdcbTransaction.dao.IMvcuserDao;
import springJdcbTransaction.vo.MVCUSER;

public class UserServiceImpl implements IUserService {
	private IMvcuserDao dao;
	
	public IMvcuserDao getDao() {
		return dao;
	}

	public void setDao(IMvcuserDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean addUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.addUser(user);
	}

	@Override
	public boolean deleteUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.deleteUser(user);
	}

	@Override
	public boolean updateUser(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.updateUser(user);
	}

	@Override
	public MVCUSER findUserById(MVCUSER user) {
		// TODO Auto-generated method stub
		return dao.findUserById(user);
	}

	@Override
	public List<MVCUSER> showAllUser() {
		// TODO Auto-generated method stub
		return dao.showAllUser();
	}

}
