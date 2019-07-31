package com.etc.admin.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.admin.daos.CarGoodsMapper;
import com.etc.admin.models.CarGoods;
import com.etc.admin.models.CarType;
@Service
public class CarGoodsServiecImpl implements ICarGoodsService{
	@Resource(name="carGoodsMapper")
	private CarGoodsMapper dao;

	@Override
	public List<CarGoods> selectcarGoodsPaging(Integer start) {
		// TODO Auto-generated method stub
		return dao.selectcarGoodsPaging(start);
	}

	@Override
	public Integer selectcarGoodsCountPaging() {
		// TODO Auto-generated method stub
		return dao.selectcarGoodsCountPaging();
	}

	@Override
	public boolean deleteCarGoodsById(Integer id) {
		// TODO Auto-generated method stub
		return dao.deleteCarGoodsById(id)>0?true:false;
	}

	@Override
	public List<CarType> selectCarGoodsOfType() {
		// TODO Auto-generated method stub
		return dao.selectCarGoodsOfType();
	}

	@Override
	public boolean insertCarGoods(CarGoods car) {
		// TODO Auto-generated method stub
		return dao.insertCarGoods(car)>0?true:false;
	}

	@Override
	public int selectCarGoodsMaxId() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertCarGoodsImgId() {
		// TODO Auto-generated method stub
		return dao.insertCarGoodsImgId();
	}


}
