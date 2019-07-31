package springJdbcMvc.dao;

import java.util.List;

import springJdbcMvc.vo.MVCUSER;

public interface IDao {
	public boolean insertUser(MVCUSER user);
	public boolean delUser(MVCUSER user);
	public boolean updateUser(MVCUSER user);
	public List<MVCUSER> listUser();
	public MVCUSER user(MVCUSER user);
}
