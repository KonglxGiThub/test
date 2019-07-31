package com.etc.admin.daos;

import com.etc.admin.models.CarImg;

public interface CarImgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CarImg record);

    int insertSelective(CarImg record);

    CarImg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CarImg record);

    int updateByPrimaryKey(CarImg record);
    
    int insertCarImg(CarImg record);
    
    int selectCarImgMaxId();
}