package com.etc.admin.daos;

import java.util.List;

import com.etc.admin.models.MBrand;


public interface MBrandMapper {
    int deleteByPrimaryKey(Integer brandId);

    int insert(MBrand record);

    int insertSelective(MBrand record);

    MBrand selectByPrimaryKey(Integer brandId);

    int updateByPrimaryKeySelective(MBrand record);

    int updateByPrimaryKey(MBrand record);

	List<MBrand> selectAll();
}