package com.bs.xyl.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.xyl.bean.Message;
import com.bs.xyl.util.BaseDao;

public class MessageDao extends BaseDao {
	String sql = null;
	int numR = 0;

	// 查看所有
	// id,title,text,time,state,rtext,rtime,stu_id,class_id
	public List viewAll() {
		sql = "select t1.id,t1.title,t1.text,t1.time,t1.state,t1.rtext,t1.rtime,t1.stu_id,t1.class_id,t2.stu_no,t3.grade,t3.name  from t_message t1,t_stu t2,t_class t3 where t1.stu_id=t2.id and t1.class_id=t3.id order by time desc";
		List list = null;
		List<Message> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Message message = new Message();
					message.setId(Integer.parseInt((String) tempRow.get(0)));
					message.setTitle((String) tempRow.get(1));
					message.setText((String) tempRow.get(2));
					message.setTime((String) tempRow.get(3));
					message.setState(Integer.parseInt((String) tempRow.get(4)));
					message.setRtext((String) tempRow.get(5));
					message.setRtime((String) tempRow.get(6));
					message
							.setStu_id(Integer
									.parseInt((String) tempRow.get(7)));
					message.setClass_id(Integer.parseInt((String) tempRow
							.get(8)));
					message.setStu_no((String) tempRow.get(9));
					message.setClass_name((String) tempRow.get(10)
							+ (String) tempRow.get(11));
					newList.add(message);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	// 新增
	public int addNew(Message message) {
		sql = "insert into t_news(title,text,time,state,rtext,rtime,stu_id,class_id) values('"
				+ message.getTitle()
				+ "','"
				+ message.getText()
				+ "',now(),'"
				+ message.getState()
				+ "','"
				+ message.getRtext()
				+ "','"
				+ message.getRtime()
				+ "','"
				+ message.getStu_id()
				+ "','"
				+ message.getClass_id() + "') ";
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 修改
	public int update(Message message) {
		sql = "update  t_message set title='" + message.getTitle() + "',text='"
				+ message.getText() + "',time='" + message.getTime()
				+ "',state='" + message.getState() + "',rtext='"
				+ message.getRtext() + "',rtime='" + message.getRtime()
				+ "',stu_id='" + message.getStu_id() + "',class_id='"
				+ message.getClass_id() + "'  where id=" + message.getId();
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	public int updateStu(Message message) {
		sql = "update  t_message set title='" + message.getTitle() + "',text='"
				+ message.getText() + "',time=now()  where id="
				+ message.getId();
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
					String sql = "delete from t_message where id = " + ids;
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

	// 新增留言信息
	public int addStuMessage(Message message) {
		sql = "insert into t_message(title,text,time,state,stu_id,class_id) values('"
				+ message.getTitle()
				+ "','"
				+ message.getText()
				+ "',now(),0,"
				+ message.getStu_id() + "," + message.getClass_id() + ") ";
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	public List searchByCid(String class_id) {
		sql = "select t1.id,t1.title,t1.text,t1.time,t1.state,t1.rtext,t1.rtime,t1.stu_id,t1.class_id,t2.stu_no,t3.grade,t3.name  from t_message t1,t_stu t2,t_class t3 where t1.stu_id=t2.id and t1.class_id=t3.id and t1.class_id="
				+ class_id + "  order by time desc";
		List list = null;
		List<Message> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Message message = new Message();
					message.setId(Integer.parseInt((String) tempRow.get(0)));
					message.setTitle((String) tempRow.get(1));
					message.setText((String) tempRow.get(2));
					message.setTime((String) tempRow.get(3));
					message.setState(Integer.parseInt((String) tempRow.get(4)));
					message.setRtext((String) tempRow.get(5));
					message.setRtime((String) tempRow.get(6));
					message
							.setStu_id(Integer
									.parseInt((String) tempRow.get(7)));
					message.setClass_id(Integer.parseInt((String) tempRow
							.get(8)));
					message.setStu_no((String) tempRow.get(9));
					message.setClass_name((String) tempRow.get(10)
							+ (String) tempRow.get(11));
					newList.add(message);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	public List searchByState(String state) {
		sql = "select t1.id,t1.title,t1.text,t1.time,t1.state,t1.rtext,t1.rtime,t1.stu_id,t1.class_id,t2.stu_no,t3.grade,t3.name  from t_message t1,t_stu t2,t_class t3 where t1.stu_id=t2.id and t1.class_id=t3.id and t1.state="
				+ state + "  order by time desc";
		List list = null;
		List<Message> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Message message = new Message();
					message.setId(Integer.parseInt((String) tempRow.get(0)));
					message.setTitle((String) tempRow.get(1));
					message.setText((String) tempRow.get(2));
					message.setTime((String) tempRow.get(3));
					message.setState(Integer.parseInt((String) tempRow.get(4)));
					message.setRtext((String) tempRow.get(5));
					message.setRtime((String) tempRow.get(6));
					message
							.setStu_id(Integer
									.parseInt((String) tempRow.get(7)));
					message.setClass_id(Integer.parseInt((String) tempRow
							.get(8)));
					message.setStu_no((String) tempRow.get(9));
					message.setClass_name((String) tempRow.get(10)
							+ (String) tempRow.get(11));
					newList.add(message);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	// cls提交回复
	public int reply(Message message) {
		sql = "update  t_message set rtext='" + message.getRtext()
				+ "',rtime=now(),state=1  where id=" + message.getId();
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	public List viewAllByStuId(int stu_id) {
		sql = "select t1.id,t1.title,t1.text,t1.time,t1.state,t1.rtext,t1.rtime,t1.stu_id,t1.class_id,t2.stu_no,t3.grade,t3.name  from t_message t1,t_stu t2,t_class t3 where t1.stu_id=t2.id and t1.class_id=t3.id and t1.stu_id="
				+ stu_id + " order by time desc";
		List list = null;
		List<Message> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					Message message = new Message();
					message.setId(Integer.parseInt((String) tempRow.get(0)));
					message.setTitle((String) tempRow.get(1));
					message.setText((String) tempRow.get(2));
					message.setTime((String) tempRow.get(3));
					message.setState(Integer.parseInt((String) tempRow.get(4)));
					message.setRtext((String) tempRow.get(5));
					message.setRtime((String) tempRow.get(6));
					message
							.setStu_id(Integer
									.parseInt((String) tempRow.get(7)));
					message.setClass_id(Integer.parseInt((String) tempRow
							.get(8)));
					message.setStu_no((String) tempRow.get(9));
					message.setClass_name((String) tempRow.get(10)
							+ (String) tempRow.get(11));
					newList.add(message);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}
}
