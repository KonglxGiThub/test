package com.bs.zp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.zp.bean.Position;
import com.bs.zp.util.BaseDao;

public class PosDao extends BaseDao{
	String sql = "";
	int num = 0;

	public List findAll() throws Exception {
		sql = "select id,c1,c2,c3,n1,n2,n3 from position order by id";
		List<Position> lists = new ArrayList<Position>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Position pos = new Position();
				pos.setId(Integer.parseInt((String) tempRow.get(0)));
				lists.add(pos);
			}
		}
		return lists;
	}
	
	public int add(Position pos) throws SQLException {
		sql = "insert into(id,c1,c2,c3,n1,n2,n3) values() ";
		int num = super.executeSQL(sql);
		return num;
	}
	public int update(Position pos) throws SQLException {
		sql = "update position set id=,c1=,c2=,c3=,n1=,n2=,n3= where ";
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
					System.err.println("删除<0");
				}
			}
			System.out.println(idCnt);
			return idCnt;
		} else {
			System.out.println("异常");
			return 0;
		}
	}
	
	//13,23,41,59,48-50,45-46
	public List find1(String c1) throws Exception {
		sql = "select id,c1,c2,n1,n2 from position where c1='"+c1+"' and c2>0 order by rand() LIMIT 5";
		List<Position> lists = new ArrayList<Position>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Position pos = new Position();
				pos.setId(Integer.parseInt((String) tempRow.get(0)));
				pos.setC1((String) tempRow.get(1));
				pos.setC2((String) tempRow.get(2));
				pos.setN1((String) tempRow.get(3));
				pos.setN2((String) tempRow.get(4));
				lists.add(pos);
			}
		}
		return lists;
	}
	
	//查询公司所在行业信息
	public Position findPosByCid(String industry) throws Exception {
		String c1 = industry.substring(0, 2);
		String c2 = industry.substring(2, 4);
		sql = "select id,c1,c2,n1,n2 from position where c1 = '"+c1+"' and c2 = '"+c2+"' ";
		Position pos = new Position();
		List list = super.select(sql);
		if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				pos.setId(Integer.parseInt((String) tempRow.get(0)));
				pos.setC1((String) tempRow.get(1));
				pos.setC2((String) tempRow.get(2));
				pos.setN1((String) tempRow.get(3));
				pos.setN2((String) tempRow.get(4));
		}
		return pos;
	}

}
