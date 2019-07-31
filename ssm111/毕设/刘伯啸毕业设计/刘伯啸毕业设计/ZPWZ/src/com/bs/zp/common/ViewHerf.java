package com.bs.zp.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bs.zp.bean.LianJie;
import com.bs.zp.dao.LJDao;



public class ViewHerf {
	public List ViewHerf(){
		LJDao dao = new LJDao();
		List<LianJie> plist = new ArrayList<LianJie>();
		try {
			plist = dao.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return plist;

	}
}
