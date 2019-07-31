package springJdcbTransaction.dao;

import java.util.List;

import springJdcbTransaction.vo.MVCUSER;

public interface IMvcuserDao {
	public boolean addUser(MVCUSER user);
	public boolean deleteUser(MVCUSER user);
	public boolean updateUser(MVCUSER user);
	public MVCUSER findUserById(MVCUSER user);
	public List<MVCUSER> showAllUser();
}
