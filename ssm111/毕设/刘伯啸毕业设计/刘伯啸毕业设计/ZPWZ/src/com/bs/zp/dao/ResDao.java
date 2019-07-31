package com.bs.zp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.zp.bean.Company;
import com.bs.zp.bean.Job;
import com.bs.zp.bean.ResumeBean;
import com.bs.zp.bean.Seeker;
import com.bs.zp.util.BaseDao;
import com.bs.zp.util.PageCount;

public class ResDao extends BaseDao {
	String sql = "";
	int num = 0;

	public int addRes(int sid, int cid, String time, int type, int jid) {
		sql = "insert into cs(sid,cid,time,state,type,jid) values(" + sid + ","
				+ cid + ",'" + time + "',0," + type + "," + jid + ") ";
		try {
			num = super.executeSQL(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

	public int count(int sid, int cid, int jid) {
		sql = "select id from cs where cid=" + cid + " and sid=" + sid
				+ " and jid=" + jid;
		try {
			num = super.count(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}

	// 条件查询职位信息,职位描述模糊查询
	public List findByCid(int cid, int now) {
		sql = "select t1.id,t1.name,t1.sex,t1.age,t1.addr,t1.tel,t1.political,t1.email,t1.qq,t1.state,t2.id,t2.name,t2.name_all,t2.property,t2.industry,t2.size,t2.profile,t2.linkman,t2.tel,t2.email,t2.web,t2.addr,t2.logo,t2.state,t1.education,t3.id,t3.state,t3.type,t3.time,t3.jid,t4.name,t1.background from seeker t1,company t2,cs t3,job t4 where t4.id = t3.jid and t3.sid=t1.id and t3.cid=t2.id and t2.id="
				+ cid + "  order by t3.time desc";
		sql = PageCount.Tosql(sql, now);
		List<ResumeBean> lists = new ArrayList<ResumeBean>();
		List list;
		try {
			list = super.select(sql);
			if (!list.isEmpty()) {
				for (int i = 0; i < list.size(); i++) {
					ArrayList tempRow = (ArrayList) list.get(i);
					ResumeBean rb = new ResumeBean();
					Seeker sek = new Seeker();
					Company cpy = new Company();
					Job job = new Job();
					sek.setId(Integer.parseInt((String) tempRow.get(0)));
					sek.setName((String) tempRow.get(1));
					sek.setSex((String) tempRow.get(2));
					sek.setAge((String) tempRow.get(3));
					sek.setAddr((String) tempRow.get(4));
					sek.setTel((String) tempRow.get(5));
					sek.setPolitical((String) tempRow.get(6));
					sek.setEmail((String) tempRow.get(7));
					sek.setQq((String) tempRow.get(8));
					sek.setState(Integer.parseInt((String) tempRow.get(9)));
					cpy.setId(Integer.parseInt((String) tempRow.get(10)));
					cpy.setName((String) tempRow.get(11));
					cpy.setName_all((String) tempRow.get(12));
					cpy.setProperty((String) tempRow.get(13));
					cpy.setIndustry((String) tempRow.get(14));
					cpy.setSize((String) tempRow.get(15));
					cpy.setProfile((String) tempRow.get(16));
					cpy.setLinkman((String) tempRow.get(17));
					cpy.setTel((String) tempRow.get(18));
					cpy.setEmail((String) tempRow.get(19));
					cpy.setWeb((String) tempRow.get(20));
					cpy.setAddr((String) tempRow.get(21));
					cpy.setLogo((String) tempRow.get(22));
					cpy.setState(Integer.parseInt((String) tempRow.get(23)));
					sek.setEducation((String) tempRow.get(24));
					rb.setRbid(Integer.parseInt((String) tempRow.get(25)));
					rb.setState((String) tempRow.get(26));
					rb.setType((String) tempRow.get(27));
					rb.setTime((String) tempRow.get(28));
					rb.setJid(Integer.parseInt((String) tempRow.get(29)));
					job.setName((String) tempRow.get(30));
					sek.setBackground((String) tempRow.get(31));
					rb.setSek(sek);
					rb.setCpy(cpy);
					rb.setJob(job);
					lists.add(rb);
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lists;
	}
	
	
	// 精确查询职位信息
	public ResumeBean findResume(int id) {
		sql = "select t1.id,t1.name,t1.sex,t1.age,t1.addr,t1.tel,t1.political,t1.email,t1.qq,t1.state,t2.id,t2.name,t2.name_all,t2.property,t2.industry,t2.size,t2.profile,t2.linkman,t2.tel,t2.email,t2.web,t2.addr,t2.logo,t2.state,t1.education,t3.id,t3.state,t3.type,t3.time,t3.jid,t4.name,t1.background from seeker t1,company t2,cs t3,job t4 where t4.id = t3.jid and t3.sid=t1.id and t3.cid=t2.id and t3.id="
			+ id + " ";
		List<ResumeBean> lists = new ArrayList<ResumeBean>();
		ResumeBean rb = new ResumeBean();
		try {
			List list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				Seeker sek = new Seeker();
				Company cpy = new Company();
				Job job = new Job();
				sek.setId(Integer.parseInt((String) tempRow.get(0)));
				sek.setName((String) tempRow.get(1));
				sek.setSex((String) tempRow.get(2));
				sek.setAge((String) tempRow.get(3));
				sek.setAddr((String) tempRow.get(4));
				sek.setTel((String) tempRow.get(5));
				sek.setPolitical((String) tempRow.get(6));
				sek.setEmail((String) tempRow.get(7));
				sek.setQq((String) tempRow.get(8));
				sek.setState(Integer.parseInt((String) tempRow.get(9)));
				cpy.setId(Integer.parseInt((String) tempRow.get(10)));
				cpy.setName((String) tempRow.get(11));
				cpy.setName_all((String) tempRow.get(12));
				cpy.setProperty((String) tempRow.get(13));
				cpy.setIndustry((String) tempRow.get(14));
				cpy.setSize((String) tempRow.get(15));
				cpy.setProfile((String) tempRow.get(16));
				cpy.setLinkman((String) tempRow.get(17));
				cpy.setTel((String) tempRow.get(18));
				cpy.setEmail((String) tempRow.get(19));
				cpy.setWeb((String) tempRow.get(20));
				cpy.setAddr((String) tempRow.get(21));
				cpy.setLogo((String) tempRow.get(22));
				cpy.setState(Integer.parseInt((String) tempRow.get(23)));
				sek.setEducation((String) tempRow.get(24));
				rb.setRbid(Integer.parseInt((String) tempRow.get(25)));
				rb.setState((String) tempRow.get(26));
				rb.setType((String) tempRow.get(27));
				rb.setTime((String) tempRow.get(28));
				rb.setJid(Integer.parseInt((String) tempRow.get(29)));
				job.setName((String) tempRow.get(30));
				sek.setBackground((String) tempRow.get(31));
				rb.setSek(sek);
				rb.setCpy(cpy);
				rb.setJob(job);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rb;
	}
	
	// 精确查询职位信息
	public ResumeBean findSeeker(int id) {
		sql = "select t1.id,t1.name,t1.sex,t1.age,t1.addr,t1.tel,t1.political,t1.email,t1.qq,t1.state,t1.education,t1.background,t1.file from seeker t1 where  t1.id="
			+ id + " ";
		List<ResumeBean> lists = new ArrayList<ResumeBean>();
		ResumeBean rb = new ResumeBean();
		try {
			List list = super.select(sql);
			if (!list.isEmpty()) {
				ArrayList tempRow = (ArrayList) list.get(0);
				Seeker sek = new Seeker();
				sek.setId(Integer.parseInt((String) tempRow.get(0)));
				sek.setName((String) tempRow.get(1));
				sek.setSex((String) tempRow.get(2));
				sek.setAge((String) tempRow.get(3));
				sek.setAddr((String) tempRow.get(4));
				sek.setTel((String) tempRow.get(5));
				sek.setPolitical((String) tempRow.get(6));
				sek.setEmail((String) tempRow.get(7));
				sek.setQq((String) tempRow.get(8));
				sek.setState(Integer.parseInt((String) tempRow.get(9)));
				sek.setEducation((String) tempRow.get(10));
				sek.setBackground((String) tempRow.get(11));
				sek.setFile((String) tempRow.get(12));
				rb.setSek(sek);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rb;
	}

}
