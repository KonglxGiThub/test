package com.bs.zp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bs.zp.bean.Company;
import com.bs.zp.util.BaseDao;

public class CpyDao extends BaseDao {
	String sql = "";
	int num = 0;

	public List findAll() throws Exception {
		sql = "select id,account,pwd,name,name_all,property,industry,size,profile,linkman,tel,email,web,addr,logo,state from company order by id";
		List<Company> lists = new ArrayList<Company>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Company cpy = new Company();
				cpy.setId(Integer.parseInt((String) tempRow.get(0)));
				// cpy.setAccount(account);
				lists.add(cpy);
			}
		}
		return lists;
	}

	public int add(Company cpy) throws SQLException {
		sql = "insert into(id, account, pwd, name, name_all, property, industry,size,profile,linkman,tel,email,web,addr,logo,state) values()";
		int num = super.executeSQL(sql);
		return num;
	}

	public int update(Company cpy) throws SQLException {
		sql = "update company set name='" + cpy.getName() + "', name_all='"
				+ cpy.getName_all() + "', property='" + cpy.getProperty()
				+ "', industry='" + cpy.getIndustry() + "',size='"
				+ cpy.getSize() + "',profile='" + cpy.getProfile()
				+ "',linkman='" + cpy.getLinkman() + "',tel='" + cpy.getTel()
				+ "',email='" + cpy.getEmail() + "',web='" + cpy.getWeb()
				+ "',addr='" + cpy.getAddr() + "',logo=1,state=1 where id="+cpy.getId();
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

	/**
	 * 登录
	 * 
	 * @return
	 * @throws Exception
	 */
	public Company login(String account) throws Exception {
		sql = "select id, account, pwd, name, name_all, property, industry,size,profile,linkman,tel,email,web,addr,logo,state from company where account='"
				+ account + "' order by id";
		List<Company> lists = new ArrayList<Company>();
		Company cpy = new Company();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			ArrayList tempRow = (ArrayList) list.get(0);
			cpy.setId(Integer.parseInt((String) tempRow.get(0)));
			cpy.setAccount((String) tempRow.get(1));
			cpy.setPwd((String) tempRow.get(2));
			cpy.setName((String) tempRow.get(3));
		}
		return cpy;
	}

	public List find1(String industry) throws Exception {
		industry = industry.substring(0, 2);
		sql = "select id,name,name_all from company where industry like '"
				+ industry + "%'";
		List<Company> lists = new ArrayList<Company>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Company cpy = new Company();
				cpy.setId(Integer.parseInt((String) tempRow.get(0)));
				cpy.setName((String) tempRow.get(1));
				cpy.setName_all((String) tempRow.get(2));
				lists.add(cpy);
			}
		}
		return lists;
	}

	// 公司信息详情常看(求职者)
	public Company findById(int id) throws Exception {
		sql = "select id,name, name_all, property, industry,size,profile,linkman,tel,email,web,addr,logo,state,account,pwd from company where id ="
				+ id + " order by id";
		List<Company> lists = new ArrayList<Company>();
		Company cpy = new Company();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			ArrayList tempRow = (ArrayList) list.get(0);
			cpy.setId(Integer.parseInt((String) tempRow.get(0)));
			cpy.setName((String) tempRow.get(1));
			cpy.setName_all((String) tempRow.get(2));
			cpy.setProperty((String) tempRow.get(3));
			cpy.setIndustry((String) tempRow.get(4));
			cpy.setSize((String) tempRow.get(5));
			cpy.setProfile((String) tempRow.get(6));
			cpy.setLinkman((String) tempRow.get(7));
			cpy.setTel((String) tempRow.get(8));
			cpy.setEmail((String) tempRow.get(9));
			cpy.setWeb((String) tempRow.get(10));
			cpy.setAddr((String) tempRow.get(11));
			cpy.setLogo((String) tempRow.get(12));
			cpy.setState(Integer.parseInt((String) tempRow.get(13)));
			cpy.setAccount((String) tempRow.get(14));
			cpy.setPwd((String) tempRow.get(15));
		}
		return cpy;
	}

	// 最新招聘公司及招聘职位搜索
	public List findWorkNew() throws Exception {
		sql = "select * from (select cid from job group by cid ) company";
		List<Company> lists = new ArrayList<Company>();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			for (int i = 0; i < list.size(); i++) {
				ArrayList tempRow = (ArrayList) list.get(i);
				Company cpy = new Company();
				cpy.setId(Integer.parseInt((String) tempRow.get(0)));
				lists.add(cpy);
			}
		}
		return lists;
	}

	// 最新招聘用
	public Company findByIdNew(int id) throws Exception {
		sql = "select t1.id,t1.name,t1.name_all,t1.property,t2.n1,t1.size,t1.profile,t1.linkman,t1.tel,t1.email,t1.web,t1.addr,t1.logo,t1.state,t2.n2 from company t1 ,position t2 where  t1.id ="
				+ id + " and left(t1.industry,2) =t2.c1 order by t1.id";
		List<Company> lists = new ArrayList<Company>();
		Company cpy = new Company();
		List list = super.select(sql);
		if (!list.isEmpty()) {
			ArrayList tempRow = (ArrayList) list.get(0);
			cpy.setId(Integer.parseInt((String) tempRow.get(0)));
			cpy.setName((String) tempRow.get(1));
			cpy.setName_all((String) tempRow.get(2));
			cpy.setProperty((String) tempRow.get(3));
			cpy.setIndustry((String) tempRow.get(4) + ","
					+ (String) tempRow.get(14));
			cpy.setSize((String) tempRow.get(5));
			cpy.setProfile((String) tempRow.get(6));
			cpy.setLinkman((String) tempRow.get(7));
			cpy.setTel((String) tempRow.get(8));
			cpy.setEmail((String) tempRow.get(9));
			cpy.setWeb((String) tempRow.get(10));
			cpy.setAddr((String) tempRow.get(11));
			cpy.setLogo((String) tempRow.get(12));
			cpy.setState(Integer.parseInt((String) tempRow.get(13)));
		}
		return cpy;
	}

	public int zhuce(Company cpy) throws SQLException {
		sql = "insert into company (account,pwd,tel,state,email) values('"
				+ cpy.getAccount() + "','" + cpy.getPwd() + "','"
				+ cpy.getTel() + "',0,'" + cpy.getEmail() + "') ";
		int num = super.executeSQL(sql);
		return num;
	}
}
