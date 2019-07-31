package com.bs.zp.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bs.zp.bean.Company;
import com.bs.zp.dao.CpyDao;



public class ViewCpy {
	public Map ViewCpy(){
		CpyDao dao = new CpyDao();
		Map<String, List> map = new HashMap<String, List>();
		List<Company> plist = new ArrayList<Company>();
		try {
			String industry[]={"14","24","45","39","35","27","51","36","56","29","68"};
			for(int i =0;i<industry.length;i++){
				plist = dao.find1(industry[i]);
				map.put("list"+i, plist);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;

	}
}
