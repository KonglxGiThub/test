package com.bs.xyl.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.xyl.bean.Student;
import com.bs.xyl.util.BaseDao;

public class StuDao extends BaseDao {
	String sql = null;
	int numR = 0;

	// 查看所有管理员
	public List viewAll() {
		sql = "select id,stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id from t_stu ";
		List list = null;
		List<Student> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Student stu = new Student();
					stu.setId(Integer.parseInt((String) tempRow.get(0)));
					stu.setStu_no((String) tempRow.get(1));
					stu.setPwd((String) tempRow.get(2));
					stu.setName((String) tempRow.get(3));
					stu.setTel((String) tempRow.get(4));
					stu.setSex((String) tempRow.get(5));
					stu.setBirthday((String) tempRow.get(6));
					stu.setQq((String) tempRow.get(7));
					stu.setEmail((String) tempRow.get(8));
					stu.setImg((String) tempRow.get(9));
					stu.setNickname((String) tempRow.get(10));
					stu.setState(Integer.parseInt((String) tempRow.get(11)));
					stu.setClass_id(Integer.parseInt((String) tempRow.get(12)));
					newList.add(stu);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	public List searchAll(String stu_no, String class_id) {
		sql = "select id,stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id from t_stu where 1=1 ";
		if (stu_no != "" && stu_no != null) {
			sql = sql + " and stu_no='" + stu_no + "' ";
		}
		if (class_id != "" && class_id != null) {
			sql = sql + " and class_id=" + class_id + " ";
		}
		List list = null;
		List<Student> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Student stu = new Student();
					stu.setId(Integer.parseInt((String) tempRow.get(0)));
					stu.setStu_no((String) tempRow.get(1));
					stu.setPwd((String) tempRow.get(2));
					stu.setName((String) tempRow.get(3));
					stu.setTel((String) tempRow.get(4));
					stu.setSex((String) tempRow.get(5));
					stu.setBirthday((String) tempRow.get(6));
					stu.setQq((String) tempRow.get(7));
					stu.setEmail((String) tempRow.get(8));
					stu.setImg((String) tempRow.get(9));
					stu.setNickname((String) tempRow.get(10));
					stu.setState(Integer.parseInt((String) tempRow.get(11)));
					stu.setClass_id(Integer.parseInt((String) tempRow.get(12)));
					newList.add(stu);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	// 新增一个管理员
	public int addNew(Student stu) {
		sql = "insert into t_stu(stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id) values('"
				+ stu.getStu_no()
				+ "','"
				+ stu.getPwd()
				+ "','"
				+ stu.getName()
				+ "','"
				+ stu.getTel()
				+ "','"
				+ stu.getSex()
				+ "','"
				+ stu.getBirthday()
				+ "','"
				+ stu.getQq()
				+ "','"
				+ stu.getEmail()
				+ "','"
				+ stu.getImg()
				+ "','"
				+ stu.getNickname()
				+ "',"
				+ stu.getState()
				+ ","
				+ stu.getClass_id() + ") ";
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 修改管理员信息（修改照片）
	public int update(Student stu) {
		sql = "update  t_stu set img='" + stu.getImg() + "'  where id="
				+ stu.getId();
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 修改管理员信息（修改基本属性）
	public int update2(Student stu) {
		sql = "update  t_stu set stu_no='" + stu.getStu_no() + "',pwd='"
				+ stu.getPwd() + "',name='" + stu.getName() + "',tel='"
				+ stu.getTel() + "',sex='" + stu.getSex() + "',birthday='"
				+ stu.getBirthday() + "',qq='" + stu.getQq() + "',email='"
				+ stu.getEmail() + "',nickname='" + stu.getNickname()
				+ "',state=" + stu.getState() + ",class_id="
				+ stu.getClass_id() + "  where id=" + stu.getId();
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 删除数据
	public int delete(String ids) {
		if (ids.endsWith(",")) {
			int idCnt = 0;
			ids = ids.substring(0, ids.length() - 1);
			// 截取以逗号分割的字符串转化成int
			String[] idArray = ids.split(",");
			// 根据数组长度循环sql语句
			for (int i = 0; i < idArray.length; i++) {
				if (idArray[i] instanceof String) {
					ids = idArray[i].replace("'", "");
					String sql = "delete from t_stu where id = " + ids;
					try {
						idCnt += super.executeSQL(sql);
					} catch (SQLException e) {
						e.printStackTrace();
					}
				} else {
					System.err.println("数组是空的");
				}
			}
			System.out.println(idCnt);
			return idCnt;
		} else {
			System.out.println("删除数据失败");
			return 0;
		}
	}

	//
	public Student findStu(String stu_no, String pwd) {
		sql = "select id,stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id from t_stu where 1=1 ";
		if (stu_no != "" && stu_no != null) {
			sql = sql + " and stu_no='" + stu_no + "' ";
		}
		if (pwd != "" && pwd != null) {
			sql = sql + " and pwd='" + pwd + "' ";
		}
		List list = null;
		Student stu = new Student();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				stu.setId(Integer.parseInt((String) tempRow.get(0)));
				stu.setStu_no((String) tempRow.get(1));
				stu.setPwd((String) tempRow.get(2));
				stu.setName((String) tempRow.get(3));
				stu.setTel((String) tempRow.get(4));
				stu.setSex((String) tempRow.get(5));
				stu.setBirthday((String) tempRow.get(6));
				stu.setQq((String) tempRow.get(7));
				stu.setEmail((String) tempRow.get(8));
				stu.setImg((String) tempRow.get(9));
				stu.setNickname((String) tempRow.get(10));
				stu.setState(Integer.parseInt((String) tempRow.get(11)));
				stu.setClass_id(Integer.parseInt((String) tempRow.get(12)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stu;
	}

	public Student viewStu(int id) {
		sql = "select id,stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id from t_stu where id="
				+ id;
		List list = null;
		Student stu = new Student();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				stu.setId(Integer.parseInt((String) tempRow.get(0)));
				stu.setStu_no((String) tempRow.get(1));
				stu.setPwd((String) tempRow.get(2));
				stu.setName((String) tempRow.get(3));
				stu.setTel((String) tempRow.get(4));
				stu.setSex((String) tempRow.get(5));
				stu.setBirthday((String) tempRow.get(6));
				stu.setQq((String) tempRow.get(7));
				stu.setEmail((String) tempRow.get(8));
				stu.setImg((String) tempRow.get(9));
				stu.setNickname((String) tempRow.get(10));
				stu.setState(Integer.parseInt((String) tempRow.get(11)));
				stu.setClass_id(Integer.parseInt((String) tempRow.get(12)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stu;
	}

	public List viewStuCls(int class_id) {
		sql = "select id,stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id from t_stu where class_id="
				+ class_id;
		List list = null;
		List<Student> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Student stu = new Student();
					stu.setId(Integer.parseInt((String) tempRow.get(0)));
					stu.setStu_no((String) tempRow.get(1));
					stu.setPwd((String) tempRow.get(2));
					stu.setName((String) tempRow.get(3));
					stu.setTel((String) tempRow.get(4));
					stu.setSex((String) tempRow.get(5));
					stu.setBirthday((String) tempRow.get(6));
					stu.setQq((String) tempRow.get(7));
					stu.setEmail((String) tempRow.get(8));
					stu.setImg((String) tempRow.get(9));
					stu.setNickname((String) tempRow.get(10));
					stu.setState(Integer.parseInt((String) tempRow.get(11)));
					stu.setClass_id(Integer.parseInt((String) tempRow.get(12)));
					newList.add(stu);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}
	
	//查询班级同学
	public List searchStu(String stu_no, String name,String class_id) {
		sql = "select id,stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id from t_stu where  class_id="+class_id+" ";
		if (stu_no != "" && stu_no != null) {
			sql = sql + " and stu_no='" + stu_no + "' ";
		}
		if (name != "" && name != null) {
			sql = sql + " and name like '%" + name + "%' ";
		}
		List list = null;
		List<Student> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Student stu = new Student();
					stu.setId(Integer.parseInt((String) tempRow.get(0)));
					stu.setStu_no((String) tempRow.get(1));
					stu.setPwd((String) tempRow.get(2));
					stu.setName((String) tempRow.get(3));
					stu.setTel((String) tempRow.get(4));
					stu.setSex((String) tempRow.get(5));
					stu.setBirthday((String) tempRow.get(6));
					stu.setQq((String) tempRow.get(7));
					stu.setEmail((String) tempRow.get(8));
					stu.setImg((String) tempRow.get(9));
					stu.setNickname((String) tempRow.get(10));
					stu.setState(Integer.parseInt((String) tempRow.get(11)));
					stu.setClass_id(Integer.parseInt((String) tempRow.get(12)));
					newList.add(stu);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}
	
	public List searchAllScl(String stu_no, String name) {
		sql = "select id,stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id from t_stu where 1=1 ";
		if (stu_no != "" && stu_no != null) {
			sql = sql + " and stu_no='" + stu_no + "' ";
		}
		if (name != "" && name != null) {
			sql = sql + " and name like '%" + name + "%' ";
		}
		List list = null;
		List<Student> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Student stu = new Student();
					stu.setId(Integer.parseInt((String) tempRow.get(0)));
					stu.setStu_no((String) tempRow.get(1));
					stu.setPwd((String) tempRow.get(2));
					stu.setName((String) tempRow.get(3));
					stu.setTel((String) tempRow.get(4));
					stu.setSex((String) tempRow.get(5));
					stu.setBirthday((String) tempRow.get(6));
					stu.setQq((String) tempRow.get(7));
					stu.setEmail((String) tempRow.get(8));
					stu.setImg((String) tempRow.get(9));
					stu.setNickname((String) tempRow.get(10));
					stu.setState(Integer.parseInt((String) tempRow.get(11)));
					stu.setClass_id(Integer.parseInt((String) tempRow.get(12)));
					newList.add(stu);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}
}
