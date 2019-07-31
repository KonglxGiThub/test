package com.etc.admin.daos;

import java.util.List;

import com.etc.admin.models.MType;


public interface MTypeMapper {
    int deleteByPrimaryKey(Integer typeId);

    int insert(MType record);

    int insertSelective(MType record);

    MType selectByPrimaryKey(Integer typeId);

    int updateByPrimaryKeySelective(MType record);

    int updateByPrimaryKey(MType record);

	List<MType> selectAll();
}