package com.etc.admin.daos;

import java.util.List;

import com.etc.admin.models.CarUser;

public interface CarUserMapper {
    int deleteByPrimaryKey(Integer loginid);

    int insert(CarUser record);

    int insertSelective(CarUser record);

    CarUser selectByPrimaryKey(Integer loginid);

    int updateByPrimaryKeySelective(CarUser record);

     CarUser selectBynameAndId(CarUser record);
     int updatePass(CarUser user);
     List<CarUser> selectManageAll();
     int insertManager(CarUser user);
     int deleteManagerById(CarUser user);
     int updateManager(CarUser user);
     
    
    
}