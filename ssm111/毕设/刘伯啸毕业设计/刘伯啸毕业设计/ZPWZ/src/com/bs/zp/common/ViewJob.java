package com.bs.zp.common;

import java.util.*;
import com.bs.zp.bean.Position;
import com.bs.zp.dao.PosDao;



public class ViewJob {
	public Map ViewJob(){
		PosDao dao = new PosDao();
		Map<String, List> map = new HashMap<String, List>();
		List<Position> plist = new ArrayList<Position>();
		try {
			String c1[]={"48","45","19","59","14","23"};
			for(int i =0;i<c1.length;i++){
				plist = dao.find1(c1[i]);
				map.put("list"+i, plist);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;

	}
}
