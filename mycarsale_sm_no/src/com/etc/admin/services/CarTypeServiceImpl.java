package com.etc.admin.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.admin.daos.CarTypeMapper;
import com.etc.admin.models.CarType;

@Service
public class CarTypeServiceImpl implements ICarTypeService {
	@Resource(name="carTypeMapper")
	private CarTypeMapper dao;
	
	public CarTypeMapper getDao() {
		return dao;
	}

	public void setDao(CarTypeMapper dao) {
		this.dao = dao;
	}

	@Override
	public List<CarType> selectAllCarType() {
		// TODO Auto-generated method stub
		return dao.selectAllCarType();
	}

	@Override
	public boolean insertCarType(CarType car) {
		// TODO Auto-generated method stub
		return dao.insertCarType(car)>0?true:false;
	}

	@Override
	public boolean deleteCarTypeById(CarType car) {
		// TODO Auto-generated method stub
		return dao.deleteCarTypeById(car)>0?true:false;
	}
	
}
