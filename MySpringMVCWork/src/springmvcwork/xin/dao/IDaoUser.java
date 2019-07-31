package springmvcwork.xin.dao;

import java.util.List;

import springmvcwork.xin.vo.MVCUSER;

public interface IDaoUser {
	public boolean insert(MVCUSER user);
	public boolean updeateUser(MVCUSER user);
	public boolean deleteUser(MVCUSER user);
	public List<MVCUSER> selAllUser();
	public  MVCUSER user(MVCUSER user);
}
