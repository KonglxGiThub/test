package com.bs.zp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.zp.bean.Seeker;
import com.bs.zp.util.BaseDao;
import com.bs.zp.util.PageCount;

public class SekDao extends BaseDao {
	String sql = "";
	int num = 0;

	public List findAll() throws Exception {
		sql = "select id,account,pwd,name,sex,age,addr,tel,cardId,political,email,qq,state from seeker order by id";
		List<Seeker> lists = new ArrayList<Seeker>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Seeker sek = new Seeker();
				sek.setId(Integer.parseInt((String) tempRow.get(0)));
				lists.add(sek);
			}
		}
		return lists;
	}

	public int add(Seeker sek) throws SQLException {
		sql = "insert into(id,account,pwd,name,sex,age,addr,tel,cardId,political,email,qq,state,education,background,text) values() ";
		int num = super.executeSQL(sql);
		return num;
	}

	public int update(Seeker sek) throws SQLException {
		sql = "update seeker set name='"
				+ sek.getName() + "',sex='" + sek.getSex() + "',age='"
				+ sek.getAge() + "',addr='" + sek.getAddr() + "',tel='"
				+ sek.getTel() + "',cardId='" + sek.getCardId()
				+ "',political='" + sek.getPolitical() + "',email='"
				+ sek.getEmail() + "',qq='" + sek.getQq() + "',state="
				+ sek.getState() + ",text='" + sek.getText() + "',education='"
				+ sek.getEducation() + "',background='" + sek.getBackground()
				+ "' where id=" + sek.getId();
		int num = super.executeSQL(sql);
		return num;
	}
	
	public int update(int id,String file) throws SQLException {
		sql = "update seeker set file='"+file+"' where id=" + id;
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

	/**
	 * µÇÂ¼
	 * 
	 * @return
	 * @throws Exception
	 */
	public Seeker login(String account) {
		sql = "select id,account,pwd,name,sex,age,addr,tel,cardId,political,email,qq,state from seeker where account='"
				+ account + "' order by id";
		List<Seeker> lists = new ArrayList<Seeker>();
		Seeker sek = new Seeker();
		List list;
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				sek.setId(Integer.parseInt((String) tempRow.get(0)));
				sek.setAccount((String) tempRow.get(1));
				sek.setPwd((String) tempRow.get(2));
				sek.setName((String) tempRow.get(3));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sek;
	}
	
	public Seeker findById(int id) {
		sql = "select id,account,pwd,name,sex,age,addr,tel,cardId,political,email,qq,state,text from seeker where id='"
				+ id + "' order by id";
		List<Seeker> lists = new ArrayList<Seeker>();
		Seeker sek = new Seeker();
		List list;
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				sek.setId(Integer.parseInt((String) tempRow.get(0)));
				sek.setAccount((String) tempRow.get(1));
				sek.setPwd((String) tempRow.get(2));
				sek.setName((String) tempRow.get(3));
				sek.setSex((String) tempRow.get(4));
				sek.setAge((String) tempRow.get(5));
				sek.setAddr((String) tempRow.get(6));
				sek.setTel((String) tempRow.get(7));
				sek.setCardId((String) tempRow.get(8));
				sek.setPolitical((String) tempRow.get(9));
				sek.setEmail((String) tempRow.get(10));
				sek.setQq((String) tempRow.get(11));
				sek.setState(Integer.parseInt((String) tempRow.get(12)));
				sek.setText((String) tempRow.get(13));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sek;
	}
	
	
	public List findAllId(int now) throws Exception {
		sql = "select id,account,pwd,name,sex,age,addr,tel,cardId,political,email,qq,state,text,education from seeker  order by id";
		sql = PageCount.Tosql(sql, now);
		List<Seeker> lists = new ArrayList<Seeker>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				Seeker sek = new Seeker();
				ArrayList tempRow = (ArrayList) list.get(i);
				sek.setId(Integer.parseInt((String) tempRow.get(0)));
				sek.setAccount((String) tempRow.get(1));
				sek.setPwd((String) tempRow.get(2));
				sek.setName((String) tempRow.get(3));
				sek.setSex((String) tempRow.get(4));
				sek.setAge((String) tempRow.get(5));
				sek.setAddr((String) tempRow.get(6));
				sek.setTel((String) tempRow.get(7));
				sek.setCardId((String) tempRow.get(8));
				sek.setPolitical((String) tempRow.get(9));
				sek.setEmail((String) tempRow.get(10));
				sek.setQq((String) tempRow.get(11));
				sek.setState(Integer.parseInt((String) tempRow.get(12)));
				sek.setText((String) tempRow.get(13));
				sek.setEducation((String) tempRow.get(14));
				lists.add(sek);
			}
		}
		return lists;
	}
	
	
	public List findAllId(int now,String text) throws Exception {
		sql = "select id,account,pwd,name,sex,age,addr,tel,cardId,political,email,qq,state,text,education from seeker where name like '%"+text+"%' or political like '%"+text+"%' order by id";
		sql = PageCount.Tosql(sql, now);
		List<Seeker> lists = new ArrayList<Seeker>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				Seeker sek = new Seeker();
				ArrayList tempRow = (ArrayList) list.get(i);
				sek.setId(Integer.parseInt((String) tempRow.get(0)));
				sek.setAccount((String) tempRow.get(1));
				sek.setPwd((String) tempRow.get(2));
				sek.setName((String) tempRow.get(3));
				sek.setSex((String) tempRow.get(4));
				sek.setAge((String) tempRow.get(5));
				sek.setAddr((String) tempRow.get(6));
				sek.setTel((String) tempRow.get(7));
				sek.setCardId((String) tempRow.get(8));
				sek.setPolitical((String) tempRow.get(9));
				sek.setEmail((String) tempRow.get(10));
				sek.setQq((String) tempRow.get(11));
				sek.setState(Integer.parseInt((String) tempRow.get(12)));
				sek.setText((String) tempRow.get(13));
				sek.setEducation((String) tempRow.get(14));
				lists.add(sek);
			}
		}
		return lists;
	}

	public int zhuce(Seeker sek) throws SQLException {
		sql = "insert into seeker (account,pwd,tel,state,email) values('" + sek.getAccount()
				+ "','" + sek.getPwd() + "','" + sek.getTel() + "',0,'"+sek.getEmail()+"') ";
		int num = super.executeSQL(sql);
		return num;
	}
}
