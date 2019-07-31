package springmvcwork.xin.service;

import java.util.List;

import springmvcwork.xin.vo.MVCUSER;

public interface IServiceUser {
	public boolean add(MVCUSER user);
	public boolean updeateUser(MVCUSER user);
	public boolean deleteUser(MVCUSER user);
	public List<MVCUSER> selAllUser();
	public  MVCUSER user(MVCUSER user);
}
