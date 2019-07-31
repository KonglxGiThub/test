package com.etc.admin.services;

import java.util.List;

import com.etc.admin.models.CarType;

public interface ICarTypeService {
	List<CarType> selectAllCarType();
	boolean insertCarType(CarType car);
	boolean deleteCarTypeById(CarType car);
}
