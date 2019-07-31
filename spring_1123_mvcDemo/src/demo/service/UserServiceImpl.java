package demo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import demo.dao.IUserDao;
@Service
public class UserServiceImpl implements IUserService {
	@Resource(name="userDaoImpl")
	private IUserDao dao;
	@Override
	public boolean add() {
		System.out.println("添加----------");
		dao.add();
		return false;
	}

	@Override
	public boolean del() {
		System.out.println("删除------------");
		dao.del();
		return false;
	}

	@Override
	public boolean update() {
		System.out.println("更新-----------");
		dao.update();
		return false;
	}

	@Override
	public void find() {
		// TODO Auto-generated method stub
		System.out.println("查询----------");
		dao.find();
	}

	public IUserDao getDao() {
		return dao;
	}

	public void setDao(IUserDao dao) {
		this.dao = dao;
	}

}
