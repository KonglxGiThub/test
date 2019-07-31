package com.etc.admin.services;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.admin.daos.CarImgMapper;
import com.etc.admin.models.CarImg;
@Service
public class CarImgImpl implements ICarImgService {
	@Resource(name="carImgMapper")
	private CarImgMapper dao;
	
	public CarImgMapper getDao() {
		return dao;
	}

	public void setDao(CarImgMapper dao) {
		this.dao = dao;
	}

	@Override
	public boolean insertCarImg(CarImg record) {
		// TODO Auto-generated method stub
		return dao.insertCarImg(record)>0?true:false;
	}

	@Override
	public int selectCarImgMaxId() {
		// TODO Auto-generated method stub
		return dao.selectCarImgMaxId();
	}



}
