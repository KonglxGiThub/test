package com.xin.service;

import java.util.ArrayList;
import java.util.List;

import com.xin.dao.UserDao;
import com.xin.vo.User;

public class LoginService {
	UserDao dao = new UserDao();
	User u =null;
	
	//登录方法
	public int login(String name,String pass){
		
		u = dao.login(name, pass);
		if(u!=null){
			return Integer.parseInt(u.getStatus());
		}
		else{
			return 5;
		}
	
	}

	//显示全部的方法
	public List<User> showAllUser(){
		return dao.showAllUser();
	}
	
	//添加方法
	public boolean addUser(User user){
		return dao.addUser(user);
	}
//	public static void main(String[] args) {
//		LoginService ls = new LoginService();
//		System.out.println(ls.login("tom", "123").getId());
//
//	}
	//删除
	public boolean delUser(int id){
		return dao.delUser(id);
	}
	//更新
	public boolean updateUser(User user){
		return dao.upDateUser(user);
	}
	// 根据id查询
		public ArrayList<User> findUserById(int id) {
			User u = dao.selectUserById(id);
			ArrayList<User> list = new ArrayList<User>();
			list.add(u);
			return list;
		}
		// 根据id查询(更新跳转页面)
		public User getUserById(int id) {
			return dao.selectUserById(id);
		}

}
