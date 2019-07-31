package com.etc.admin.services;

import java.util.List;

import com.etc.admin.models.CarBrand;

public interface ICarBrandService{
	 List<CarBrand> selectCarBrandAll();
	 boolean deleteCarBrandById(CarBrand car);
	 boolean insertCarBrand(CarBrand car);
}
