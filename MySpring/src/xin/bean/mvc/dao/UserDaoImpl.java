package xin.bean.mvc.dao;

public class UserDaoImpl implements IUserDao {

	@Override
	public boolean add() {
		System.out.println("dao add");
		return false;
	}

	@Override
	public boolean del() {
		System.out.println("dao del");
		return false;
	}

	@Override
	public boolean update() {
		System.out.println("dao updaet");
		return false;
	}

	@Override
	public void finf() {
		System.out.println("dao find");
		
	}

}
