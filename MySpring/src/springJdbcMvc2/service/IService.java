package springJdbcMvc2.service;

import java.util.List;

import springJdbcMvc2.vo.MVCUSER;

public interface IService {
	public boolean insertUser(MVCUSER user);
	public boolean delUser(MVCUSER user);
	public boolean updateUser(MVCUSER user);
	public List<MVCUSER> listUser();
	public MVCUSER user(MVCUSER user);
}
