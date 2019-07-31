package demo.dao;

import org.springframework.stereotype.Repository;

@Repository
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
