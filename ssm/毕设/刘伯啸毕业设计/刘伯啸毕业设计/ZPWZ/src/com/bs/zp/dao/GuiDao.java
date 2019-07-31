package com.bs.zp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.zp.bean.Guide;
import com.bs.zp.util.BaseDao;

public class GuiDao extends BaseDao{
	String sql = "";
	int num = 0;
	public List findAll() throws Exception {
		sql = "select id,title,time,source,text from guide order bu id";
		List<Guide> lists = new ArrayList<Guide>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Guide gui = new Guide();
				gui.setId(Integer.parseInt((String) tempRow.get(0)));
				lists.add(gui);
			}
		}
		return lists;
	}
	
	public int add(Guide gui) throws SQLException {
		sql = "insert into(id,title,time,source,text) values()";
		int num = super.executeSQL(sql);
		return num;
	}
	public int update(Guide gui) throws SQLException {
		sql = "update guide set id=,title=,time=,source=,text= where ";
		int num = super.executeSQL(sql);
		return num;
	}
	public int delete(String ids) throws SQLException {
		if (ids.endsWith(",")) {
			int idCnt = 0;
			ids = ids.substring(0, ids.length() - 1);
			String[] idArray = ids.split(",");
			for (int i = 0; i < idArray.length; i++) {
				if (idArray[i] instanceof String) {
					ids = idArray[i].replace("'", "");
					String sql = "DELETE FROM user WHERE id = " + ids;
					idCnt += super.executeSQL(sql);
				} else {
					System.err.println("É¾³ý<0");
				}
			}
			System.out.println(idCnt);
			return idCnt;
		} else {
			System.out.println("Òì³£");
			return 0;
		}
	}

}
