package xin.bean.mvctwo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import xin.bean.mvctwo.dao.IUserDao;
//用于标注业务层组件
@Service
public class UserServiceImpl implements IUserService {
	//引用类型注解，name对应userDaoImpl类的注解的value
	/*	
	 *  @Value注解
		@Value(value = "18")
		private Long age;*/

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
