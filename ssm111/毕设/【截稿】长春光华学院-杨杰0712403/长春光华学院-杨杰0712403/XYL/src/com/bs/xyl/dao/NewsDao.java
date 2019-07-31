package com.bs.xyl.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.xyl.bean.News;
import com.bs.xyl.util.BaseDao;

public class NewsDao extends BaseDao {
	String sql = null;
	int numR = 0;

	// 查看所有
	public List viewAll() {
		sql = "select id,title,text,time,class_id from t_news order by class_id,time desc";
		List list = null;
		List<News> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					News news = new News();
					news.setId(Integer.parseInt((String) tempRow.get(0)));
					news.setTitle((String) tempRow.get(1));
					news.setText((String) tempRow.get(2));
					news.setTime((String) tempRow.get(3));
					news.setClass_id(Integer.parseInt((String) tempRow.get(4)));
					newList.add(news);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	// 新增
	public int addNew(News news) {
		sql = "insert into t_news(title,text,time,type,class_id) values('"
				+ news.getTitle() + "','" + news.getText() + "','"
				+ news.getTime() + "',0,0) ";
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// 修改
	public int update(News news) {
		sql = "update  t_news set title='" + news.getTitle() + "',text='"
				+ news.getText() + "',time='" + news.getTime() + "'  where id="
				+ news.getId();
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
					String sql = "delete from t_news where id = " + ids;
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

	// cls条件查询新闻
	public List viewNews(int class_id) {
		sql = "select id,title,text,time,type,class_id from t_news where class_id="
				+ class_id + " order by time desc";
		List list = null;
		List<News> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					News news = new News();
					news.setId(Integer.parseInt((String) tempRow.get(0)));
					news.setTitle((String) tempRow.get(1));
					news.setText((String) tempRow.get(2));
					news.setTime((String) tempRow.get(3));
					news.setType(Integer.parseInt((String) tempRow.get(4)));
					news.setClass_id(Integer.parseInt((String) tempRow.get(5)));
					newList.add(news);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	// class新增
	public int clsAddNew(News news) {
		sql = "insert into t_news(title,text,time,type,class_id) values('"
				+ news.getTitle() + "','" + news.getText() + "','"
				+ news.getTime() + "'," + news.getType() + ","
				+ news.getClass_id() + ") ";
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}

	// class修改
	public int clsUpdate(News news) {
		sql = "update  t_news set title='" + news.getTitle() + "',text='"
				+ news.getText() + "',time='" + news.getTime()
				+ "',type=1,class_id=" + news.getClass_id() + "  where id="
				+ news.getId();
		try {
			numR = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numR;
	}
	
	//student查询
	public List stuSearchView(String time) {
		sql = "select id,title,text,time,type,class_id from t_news where time like '"+time+"%' order by time desc";
		List list = null;
		List<News> newList = new ArrayList();
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					News news = new News();
					news.setId(Integer.parseInt((String) tempRow.get(0)));
					news.setTitle((String) tempRow.get(1));
					news.setText((String) tempRow.get(2));
					news.setTime((String) tempRow.get(3));
					news.setType(Integer.parseInt((String) tempRow.get(4)));
					news.setClass_id(Integer.parseInt((String) tempRow.get(5)));
					newList.add(news);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newList;
	}
}
