package com.etc.admin.services;

import java.util.List;

import com.etc.admin.models.CarUser;

public interface IUserService {
	 CarUser selectBynameAndId(CarUser record);
	 boolean updatePass(CarUser user);
	 List<CarUser> selectManageAll();
	 boolean insertManager(CarUser user);
	 boolean deleteManagerById(CarUser user);
	 boolean updateManager(CarUser user);
}
