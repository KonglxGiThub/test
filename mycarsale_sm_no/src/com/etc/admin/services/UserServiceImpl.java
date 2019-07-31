package com.etc.admin.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.admin.daos.CarUserMapper;
import com.etc.admin.models.CarUser;

@Service
public class UserServiceImpl implements IUserService{
	//根据application.xml里配置自动生成daos接口的实现类
	@Resource(name="carUserMapper")
	private CarUserMapper dao;

	@Override
	public CarUser selectBynameAndId(CarUser record) {
		// TODO Auto-generated method stub
		return dao.selectBynameAndId(record);
	}

	@Override
	public boolean updatePass(CarUser user) {
		// TODO Auto-generated method stub
		return dao.updatePass(user)>0?true:false;
	}

	@Override
	public List<CarUser> selectManageAll() {
		// TODO Auto-generated method stub
		return dao.selectManageAll();
	}

	@Override
	public boolean insertManager(CarUser user) {
		// TODO Auto-generated method stub
		return dao.insertManager(user)>0?true:false;
	}

	@Override
	public boolean deleteManagerById(CarUser user) {
		// TODO Auto-generated method stub
		return dao.deleteManagerById(user)>0?true:false;
	}

	@Override
	public boolean updateManager(CarUser user) {
		// TODO Auto-generated method stub
		return dao.updateManager(user)>0?true:false;
	}
}
