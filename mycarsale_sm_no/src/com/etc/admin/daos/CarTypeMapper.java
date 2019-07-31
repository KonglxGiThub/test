package com.etc.admin.daos;

import java.util.List;

import com.etc.admin.models.CarType;

public interface CarTypeMapper {
    int deleteByPrimaryKey(Integer typeId);

    int insert(CarType record);

    int insertSelective(CarType record);

    CarType selectByPrimaryKey(Integer typeId);

    int updateByPrimaryKeySelective(CarType record);

    int updateByPrimaryKey(CarType record);
    
    
    List<CarType> selectAllCarType();
    
    int insertCarType(CarType car);
    
    int deleteCarTypeById(CarType car);
}