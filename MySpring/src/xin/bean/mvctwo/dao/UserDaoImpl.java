package xin.bean.mvctwo.dao;

import org.springframework.stereotype.Repository;
//用于标注数据访问组件，即DAO组件
//相当于<bean id="userDaoImpl" class="xin.bean.mvc.dao.UserDaoImpl"></bean>
@Repository(value="userDaoImpl")
public class UserDaoImpl implements IUserDao {
	@Override
	public boolean add() {
		System.out.println("DAO ADD");
		return false;
	}

	@Override
	public boolean del() {
		System.out.println("DAO DEL");
		return false;
	}

	@Override
	public boolean update() {
		System.out.println("DAO UP");
		return false;
	}

	@Override
	public void find() {
		System.out.println("DAO FIND");

	}

}
