package springJdcbTransaction.service;

import java.util.List;

import springJdcbTransaction.vo.MVCUSER;

public interface IUserService {
	public boolean addUser(MVCUSER user);
	public boolean deleteUser(MVCUSER user);
	public boolean updateUser(MVCUSER user);
	public MVCUSER findUserById(MVCUSER user);
	public List<MVCUSER> showAllUser();
}
