package com.etc.admin.daos;

import com.etc.admin.models.TGoods;


public interface TGoodsMapper {
	
	TGoods selectByPrimaryKey(TGoods goods);
	int deleteByPrimaryKey(TGoods goods);
    int insert(TGoods record);

    int insertSelective(TGoods record);

    int updateByPrimaryKeySelective(TGoods record);

    int updateByPrimaryKeyWithBLOBs(TGoods record);

    int updateByPrimaryKey(TGoods record);

}