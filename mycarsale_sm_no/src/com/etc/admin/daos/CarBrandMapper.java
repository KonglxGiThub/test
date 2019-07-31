package com.etc.admin.daos;

import java.util.List;

import com.etc.admin.models.CarBrand;

public interface CarBrandMapper {
    int deleteByPrimaryKey(Integer brandId);

    int insert(CarBrand record);

    int insertSelective(CarBrand record);

    CarBrand selectByPrimaryKey(Integer brandId);

    int updateByPrimaryKeySelective(CarBrand record);

    int updateByPrimaryKey(CarBrand record);
    
    List<CarBrand> selectCarBrandAll();
    
    int deleteCarBrandById(CarBrand car);
    
    int insertCarBrand(CarBrand car);
}