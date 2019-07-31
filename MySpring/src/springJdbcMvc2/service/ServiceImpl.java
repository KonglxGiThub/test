package springJdbcMvc2.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import springJdbcMvc2.vo.MVCUSER;
import springJdbcMvc2.dao.IDao;
@Service
public class ServiceImpl implements IService {
	@Resource(name="daoImpl")
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
