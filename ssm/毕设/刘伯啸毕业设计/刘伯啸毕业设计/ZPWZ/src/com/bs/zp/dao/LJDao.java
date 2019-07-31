package com.bs.zp.dao;

import java.util.ArrayList;
import java.util.List;

import com.bs.zp.bean.LianJie;
import com.bs.zp.util.BaseDao;

public class LJDao extends BaseDao {
	String sql = "";
	int num = 0;
	public List findAll() throws Exception {
		sql = "select id,herf,name from lianjie order by id";
		List<LianJie> lists = new ArrayList<LianJie>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				LianJie lj = new LianJie();
				lj.setId(Integer.parseInt((String) tempRow.get(0)));
				lj.setHerf((String) tempRow.get(1));
				lj.setName((String) tempRow.get(2));
				lists.add(lj);
			}
		}
		return lists;
	}

	

}
