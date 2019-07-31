package com.etc.admin.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.admin.daos.CarBrandMapper;
import com.etc.admin.models.CarBrand;
@Service
public class CarBrandImpl implements ICarBrandService{
	@Resource(name="carBrandMapper")
	private CarBrandMapper dao;
	@Override
	public List<CarBrand> selectCarBrandAll() {
		// TODO Auto-generated method stub
		return dao.selectCarBrandAll();
	}
	@Override
	public boolean deleteCarBrandById(CarBrand car) {
		// TODO Auto-generated method stub
		return dao.deleteCarBrandById(car)>0?true:false;
	}
	@Override
	public boolean insertCarBrand(CarBrand car) {
		// TODO Auto-generated method stub
		return dao.insert(car)>0?true:false;
	}

}
