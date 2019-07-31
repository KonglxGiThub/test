package com.bs.zp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.zp.bean.Job;
import com.bs.zp.bean.WorkBean;
import com.bs.zp.util.BaseDao;
import com.bs.zp.util.PageCount;

public class JobDao extends BaseDao {
	String sql = "";
	int num = 0;

	public List findAll() throws Exception {
		sql = "select id,name,cName,money,addr,time,welfare,education,background,language,num,description,tel,state from job order by id";
		List<Job> lists = new ArrayList<Job>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Job job = new Job();
				job.setId(Integer.parseInt((String) tempRow.get(0)));
				lists.add(job);
			}
		}
		return lists;
	}

	public int add(Job job) throws SQLException {
		sql = "insert into job(name,cName,money,addr,time,welfare,education,background,language,num,description,tel,state,cid) values('"
				+ job.getName()
				+ "','"
				+ job.getCName()
				+ "','"
				+ job.getMoney()
				+ "','"
				+ job.getAddr()
				+ "','"
				+ job.getTime()
				+ "','"
				+ job.getWelfare()
				+ "','"
				+ job.getEducation()
				+ "','"
				+ job.getBackground()
				+ "','"
				+ job.getLanguage()
				+ "',"
				+ job.getNum()
				+ ",'"
				+ job.getDescription()
				+ "','"
				+ job.getTel()
				+ "',"
				+ job.getState() + "," + job.getCid() + ")";
		int num = super.executeSQL(sql);
		return num;
	}

	public int update(Job job) throws SQLException {
		sql = "update job set id=,name=,cName=,money=,addr=,time=,welfare=,education=,background=,language=,num=,description=,tel=,state= where ";
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

	// 条件查询职位信息,职位描述模糊查询
	public List findByJob(String str, int now) {
		sql = "select t1.id,t1.name,t1.cName,t1.money,t1.addr,t1.time,t1.state,t1.cid from job t1,work t2,position t3 where  t1.id = t2.jid and t2.pid = t3.id  ";
		sql = sql + " and  (description like '%" + str + "%' or name like '%"
				+ str + "%'  or  cName  like '%" + str + "%' )";
		sql = sql + " order by t1.time  desc  ";
		sql = PageCount.Tosql(sql, now);
		List<WorkBean> lists = new ArrayList<WorkBean>();
		List list;
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					WorkBean wb = new WorkBean();
					Job job = new Job();
					job.setId(Integer.parseInt((String) tempRow.get(0)));
					job.setName((String) tempRow.get(1));
					job.setCName((String) tempRow.get(2));
					job.setMoney((String) tempRow.get(3));
					job.setAddr((String) tempRow.get(4));
					job.setTime((String) tempRow.get(5));
					job.setState(Integer.parseInt((String) tempRow.get(6)));
					job.setCid(Integer.parseInt((String) tempRow.get(7)));
					wb.setJob(job);
					lists.add(wb);
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lists;
	}

	// 导航栏查询职位
	public List findByJob(int c1, int c2, int now) throws Exception {
		sql = "select t1.id,t1.name,t1.cName,t1.money,t1.addr,t1.time,t1.state,t1.cid from job t1,work t2,position t3 where  t1.id = t2.jid and t2.pid = t3.id  ";
		sql = sql + " and t3.c1 =" + c1 + " and t3.c2 = " + c2 + " ";
		sql = sql + " order by t1.time  desc  ";
		sql = PageCount.Tosql(sql, now);
		List<WorkBean> lists = new ArrayList<WorkBean>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				WorkBean wb = new WorkBean();
				Job job = new Job();
				job.setId(Integer.parseInt((String) tempRow.get(0)));
				job.setName((String) tempRow.get(1));
				job.setCName((String) tempRow.get(2));
				job.setMoney((String) tempRow.get(3));
				job.setAddr((String) tempRow.get(4));
				job.setTime((String) tempRow.get(5));
				job.setState(Integer.parseInt((String) tempRow.get(6)));
				job.setCid(Integer.parseInt((String) tempRow.get(7)));
				wb.setJob(job);
				lists.add(wb);
			}
		}
		return lists;
	}

	// 查询所有职位
	public List findAllJob(int now) throws Exception {
		sql = "select t1.id,t1.name,t1.cName,t1.money,t1.addr,t1.time,t1.state,t1.cid from job t1,work t2,position t3 where  t1.id = t2.jid and t2.pid = t3.id  ";
		sql = sql + " order by t1.time  desc  ";
		sql = PageCount.Tosql(sql, now);
		List<WorkBean> lists = new ArrayList<WorkBean>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				WorkBean wb = new WorkBean();
				Job job = new Job();
				job.setId(Integer.parseInt((String) tempRow.get(0)));
				job.setName((String) tempRow.get(1));
				job.setCName((String) tempRow.get(2));
				job.setMoney((String) tempRow.get(3));
				job.setAddr((String) tempRow.get(4));
				job.setTime((String) tempRow.get(5));
				job.setState(Integer.parseInt((String) tempRow.get(6)));
				job.setCid(Integer.parseInt((String) tempRow.get(7)));
				wb.setJob(job);
				lists.add(wb);
			}
		}
		return lists;
	}

	// 搜索引擎所有职位
	public List findAllJob(int now, String txtKeyWord) throws Exception {
		sql = "select t1.id,t1.name,t1.cName,t1.money,t1.addr,t1.time,t1.state,t1.cid from job t1,work t2,position t3 where  t1.id = t2.jid and t2.pid = t3.id  and (t1.name like '%"
				+ txtKeyWord + "%'  or t1.cName  like '%" + txtKeyWord + "%')";
		sql = sql + " order by t1.time  desc  ";
		sql = PageCount.Tosql(sql, now);
		List<WorkBean> lists = new ArrayList<WorkBean>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				WorkBean wb = new WorkBean();
				Job job = new Job();
				job.setId(Integer.parseInt((String) tempRow.get(0)));
				job.setName((String) tempRow.get(1));
				job.setCName((String) tempRow.get(2));
				job.setMoney((String) tempRow.get(3));
				job.setAddr((String) tempRow.get(4));
				job.setTime((String) tempRow.get(5));
				job.setState(Integer.parseInt((String) tempRow.get(6)));
				job.setCid(Integer.parseInt((String) tempRow.get(7)));
				wb.setJob(job);
				lists.add(wb);
			}
		}
		return lists;
	}

	// 查询公司发布所有职位
	public List findAllJobById(int cid) throws Exception {
		sql = "select t1.id,t1.name,t1.cName,t1.money,t1.addr,t1.time,t1.state,t1.education,t1.background,t1.language,t1.cid from job t1,company t2 where  t1.cid = t2.id and t1.cid="
				+ cid + " ";
		List<Job> lists = new ArrayList<Job>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Job job = new Job();
				job.setId(Integer.parseInt((String) tempRow.get(0)));
				job.setName((String) tempRow.get(1));
				job.setCName((String) tempRow.get(2));
				job.setMoney((String) tempRow.get(3));
				job.setAddr((String) tempRow.get(4));
				job.setTime((String) tempRow.get(5));
				job.setState(Integer.parseInt((String) tempRow.get(6)));
				job.setEducation((String) tempRow.get(7));
				job.setBackground((String) tempRow.get(8));
				job.setLanguage((String) tempRow.get(9));
				job.setCid(Integer.parseInt((String) tempRow.get(10)));
				lists.add(job);
			}
		}
		return lists;
	}

	public Job findJobById(int id) throws Exception {
		sql = "select id,name,cName,money,addr,time,welfare,education,background,language,num,description,tel,state,cid from job where id="
				+ id + " ";
		List<Job> lists = new ArrayList<Job>();
		Job job = new Job();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			ArrayList tempRow = (ArrayList) list.get(0);
			job.setId(Integer.parseInt((String) tempRow.get(0)));
			job.setName((String) tempRow.get(1));
			job.setCName((String) tempRow.get(2));
			job.setMoney((String) tempRow.get(3));
			job.setAddr((String) tempRow.get(4));
			job.setTime((String) tempRow.get(5));
			job.setWelfare((String) tempRow.get(6));
			job.setEducation((String) tempRow.get(7));
			job.setBackground((String) tempRow.get(8));
			job.setLanguage((String) tempRow.get(9));
			job.setNum(Integer.parseInt((String) tempRow.get(10)));
			job.setDescription((String) tempRow.get(11));
			job.setTel((String) tempRow.get(12));
			job.setState(Integer.parseInt((String) tempRow.get(13)));
			job.setCid(Integer.parseInt((String) tempRow.get(14)));
		}
		return job;
	}

	// 最新职位信息查询
	// 条件查询职位信息,职位描述模糊查询
	public List findNewJob(String str, int now) throws Exception {
		sql = "select t1.id,t1.name,t1.cName,t1.money,t1.addr,t1.time,t1.state,t2.name_all from job t1,company t2 where t1.cid = t2.id";
		sql = sql + " order by t1.time  desc  group by t1.cid ";
		sql = PageCount.Tosql(sql, now);
		List<Job> lists = new ArrayList<Job>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Job job = new Job();
				job.setId(Integer.parseInt((String) tempRow.get(0)));
				job.setName((String) tempRow.get(1));
				job.setCName((String) tempRow.get(2));
				job.setMoney((String) tempRow.get(3));
				job.setAddr((String) tempRow.get(4));
				job.setTime((String) tempRow.get(5));
				job.setState(Integer.parseInt((String) tempRow.get(6)));
				lists.add(job);
			}
		}
		return lists;
	}

	// 最新工作
	public List findJobWorkByCid(int cid) throws Exception {
		sql = "select id,name,cName,money,addr,time,state from job where cid = "
				+ cid + " ";
		sql = sql + " order by time  desc  ";
		List<Job> lists = new ArrayList<Job>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Job job = new Job();
				job.setId(Integer.parseInt((String) tempRow.get(0)));
				job.setName((String) tempRow.get(1));
				job.setCName((String) tempRow.get(2));
				job.setMoney((String) tempRow.get(3));
				job.setAddr((String) tempRow.get(4));
				job.setTime((String) tempRow.get(5));
				job.setState(Integer.parseInt((String) tempRow.get(6)));
				lists.add(job);
			}
		}
		return lists;
	}

	public Job findJobByTime(String time) throws Exception {
		sql = "select id,name,cName,money,addr,time,welfare,education,background,language,num,description,tel,state,cid from job where time='"
				+ time + "' ";
		List<Job> lists = new ArrayList<Job>();
		Job job = new Job();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			ArrayList tempRow = (ArrayList) list.get(0);
			job.setId(Integer.parseInt((String) tempRow.get(0)));
			job.setName((String) tempRow.get(1));
			job.setCName((String) tempRow.get(2));
			job.setMoney((String) tempRow.get(3));
			job.setAddr((String) tempRow.get(4));
			job.setTime((String) tempRow.get(5));
			job.setWelfare((String) tempRow.get(6));
			job.setEducation((String) tempRow.get(7));
			job.setBackground((String) tempRow.get(8));
			job.setLanguage((String) tempRow.get(9));
			job.setNum(Integer.parseInt((String) tempRow.get(10)));
			job.setDescription((String) tempRow.get(11));
			job.setTel((String) tempRow.get(12));
			job.setState(Integer.parseInt((String) tempRow.get(13)));
			job.setCid(Integer.parseInt((String) tempRow.get(14)));
		}
		return job;
	}

	public int insert(int jid, String c1, String c2) throws SQLException {
		sql = "insert into work(jid,pid) values(" + jid
				+ ",(select id from position where c1='" + c1 + "' and c2='"
				+ c2 + "' ))";
		int num = super.executeSQL(sql);
		return num;
	}

}
