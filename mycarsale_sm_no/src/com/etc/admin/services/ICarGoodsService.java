package com.etc.admin.services;

import java.util.List;

import com.etc.admin.models.CarGoods;
import com.etc.admin.models.CarType;

public interface ICarGoodsService {
	List<CarGoods> selectcarGoodsPaging(Integer start);
	Integer selectcarGoodsCountPaging();
	boolean deleteCarGoodsById(Integer id);
	List<CarType> selectCarGoodsOfType();
	boolean insertCarGoods(CarGoods car);
	int selectCarGoodsMaxId();
	
	int insertCarGoodsImgId();
}
