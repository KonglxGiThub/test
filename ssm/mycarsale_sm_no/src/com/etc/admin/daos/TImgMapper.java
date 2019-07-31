package com.etc.admin.daos;

import java.util.List;

import com.etc.admin.models.TImg;



public interface TImgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TImg record);

    int insertSelective(TImg record);

    TImg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TImg record);

    int updateByPrimaryKey(TImg record);

	List<TImg> selectByImgId(String imgId);
}