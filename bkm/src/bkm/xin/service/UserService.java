package bkm.xin.service;

import bkm.xin.dao.UserDao;
import bkm.xin.vo.User;

public class UserService {

	public int login(User user){
		UserDao dao = new UserDao();
		User u = dao.login(user);
		if(u!=null){
			return Integer.parseInt(u.getStatus());
		}else{
			return -1;
		}
		
	}
	public static void main(String[] args) {
		System.out.println(new UserService().login(new User("tom","123")));

	}

}
