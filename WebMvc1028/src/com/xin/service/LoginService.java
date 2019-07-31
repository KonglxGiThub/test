package com.xin.service;

import java.util.ArrayList;
import java.util.List;

import com.xin.dao.UserDao;
import com.xin.vo.User;

public class LoginService {
	/**
	 * 实现登录的方法
	 * 参数：用户名，密码
	 * 开发者：tom
	 * 返回值：该用户状态
	 * */
	UserDao dao = new UserDao();
	User u = new User();
	public int login(String name,String pass){
		//User u = new User();
		User u = dao.login(name, pass);
		if(u==null){
			//账号密码错误，或者无账户密码
			return -1;
		}
		else{
			return Integer.parseInt(u.getStatus());
		}
	}
	
	//查询全部
	public List<User> showAll(){
		List<User> list = new ArrayList<User>();
		list = dao.login();
			if(list.size()>0){
			for(User u:list){
				System.out.println(u.getId());
			}
			return list;
		}
		else{
			
			return null;
		}
		
	}
	//delete
	public boolean falg(int id){
		if(dao.delete(id)){
			return true;
		}
		else{
			return false;
		}
	}
	
	//adduser
	public boolean addUser(User user){
		return dao.addUser(user);
	}
	
	//update
	public boolean updateUser(User user){
		return dao.upDateUser(user);
	}
//	public static void main(String[] args) {
//		LoginService l = new LoginService();
//		System.out.println(l.updateUser(new User("5","5",1)));
//	}
}
