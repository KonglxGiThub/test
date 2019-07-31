package com.etc.admin.services;

import com.etc.admin.models.CarImg;

public interface ICarImgService {
	  boolean insertCarImg(CarImg record);
	  int selectCarImgMaxId();
}
