package com.bs.zp.dao;

import java.util.ArrayList;
import java.util.List;

import com.bs.zp.bean.Job;
import com.bs.zp.bean.WorkBean;
import com.bs.zp.util.BaseDao;
import com.bs.zp.util.PageCount;

public class PageDao extends BaseDao {
	String sql = "";
	int num = 0;
	public int findPage(int c1, int c2){
		sql = "select t1.id from job t1,work t2,position t3 where  t1.id = t2.jid and t2.pid = t3.id and t3.c1 ="+c1+" and t3.c2 = "+c2+" ";
		try {
			num = super.count(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}
	
	public int findAllSek() {
		sql = "select id from seeker    ";
		try {
			num = super.count(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}
	
	
	//查询所有职位
	public int findAllJob() {
		sql = "select t1.id,t1.name,t1.cName,t1.money,t1.addr,t1.time,t1.state,t1.cid from job t1,work t2,position t3 where  t1.id = t2.jid and t2.pid = t3.id  ";
		try {
			num = super.count(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}
	
	//查询所有职位
	public int findByJob(String str) {
		sql = "select id,name,cName,money,addr,time,state from job ";
		sql = sql + " where  (description like '%"+str+"%' or name like '%"+str+"%'  or  cName  like '%"+str+"%' )";
		try {
			num = super.count(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}
	
	//查看投递简历
	public int findRes(int cid){
		sql = "select t1.id,t1.name,t1.sex,t1.age,t1.addr,t1.tel,t1.political,t1.email,t1.qq,t1.state,t2.id,t2.name,t2.name_all,t2.property,t2.industry,t2.size,t2.profile,t2.linkman,t2.tel,t2.email,t2.web,t2.addr,t2.logo,t2.state from seeker t1,company t2,cs t3 where t3.sid=t1.id and t3.cid=t2.id and t2.id="
			+ cid  ;
		try {
			num = super.count(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}
	
}
