package com.bean;

/**
 * 系统核心设置
 * @author Administrator
 *
 */
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.Constant;
import com.util.DBO;


public class SystemBean {

	private List list;
	private ResultSet rs;
	
	//update system infomation
	public int updateSystem(String sql){
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			if(i == 1)
				return Constant.SUCCESS;
			else
				return Constant.SYSTEM_ERROR;
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
	
	//get site infomation
	public List getSystem(){
		String sql = "select * from system ";
		DBO dbo = new DBO();
		dbo.open();
		try{
			rs = dbo.executeQuery(sql);
			rs.next();
			list = new ArrayList();
			list.add(rs.getString(2));
			list.add(rs.getString(3));
			list.add(rs.getString(4));
			list.add(rs.getString(5));
			list.add(rs.getString(6));
			list.add(rs.getString(7));
			list.add(rs.getString(8));
			list.add(rs.getString(9));
			list.add(rs.getString(10));
			list.add(rs.getString(11));
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	
	//get site name
	public List getSiteInfo(){
		String sql = "select * from system ";
		DBO dbo = new DBO();
		dbo.open();
		try{
			rs = dbo.executeQuery(sql);
			rs.next();
			list = new ArrayList();
			list.add(rs.getString("sitename")); //0
			list.add(rs.getString("url")); //1
			list.add(rs.getString("keyword")); //2
			list.add(rs.getString("description")); //3
			list.add(rs.getString("email")); //4
			list.add(rs.getString("state")); //5
			list.add(rs.getString("reasons")); //6
			list.add(rs.getString("record")); //7
			list.add(rs.getString("copyright")); //8
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	
	//get system dir
	public String getDir(){
		String sql = "select dir from system ";
		DBO dbo = new DBO();
		dbo.open();
		try{
			rs = dbo.executeQuery(sql);
			rs.next();
			String dir = rs.getString(1);
			return dir;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			dbo.close();
		}
	}
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//查询审核设置
	public List getStopSet(){
		String sql = "select off.reg,off.custom,off.guestbook,off.info,stopreg.stopname,off.classinfo,off.old,off.friend,off.job from off,stopreg ";
		DBO dbo = new DBO();
		dbo.open();
		list = new ArrayList();
		try{
			rs = dbo.executeQuery(sql);
			rs.next();
			list.add(rs.getString(1));//reg
			list.add(rs.getString(2));//custom
			list.add(rs.getString(3));//guestbook
			list.add(rs.getString(4));//info
			list.add(rs.getString(5));//stopname
			list.add(rs.getString(6));//classinfo
			list.add(rs.getString(7));//old
			list.add(rs.getString(8));//friend
			list.add(rs.getString(9));//job
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
//	修改前台审核设置
	public int upRegSet(int reg,int custom,int guestbook,int info,int classinfo,int old,int friend,int job, String stopname){
		String sql = "update off set reg='"+reg+"',custom='"+custom+"',guestbook='"+guestbook+"',info='"+info+"',classinfo='"+classinfo+"',old='"+old+"',friend='"+friend+"',job='"+job+"'";
		String sql2 = "update stopreg set stopname='"+stopname+"'";
		DBO dbo = new DBO();
		dbo.open();
		try{
			int i = dbo.executeUpdate(sql);
			int j = dbo.executeUpdate(sql2);
			if(i == j)
				return Constant.SUCCESS;
			else
				return Constant.SYSTEM_ERROR;
		}catch(Exception e){
			e.printStackTrace();
			return Constant.SYSTEM_ERROR;
		}finally{
			dbo.close();
		}
	}
//	后台首页资讯数
	public int getNewsCount() { 
		String sql = "select count(*) from  news ";
		 DBO dbo=new DBO();
        dbo.open();
        try { 
            rs = dbo.executeQuery(sql);
            rs.next();
            return rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            dbo.close();
        }
    }
//	后台首页网友评论数
	public int getCommentsCount() { 
		String sql = "select count(*) from  renews ";
		 DBO dbo=new DBO();
        dbo.open();
        try { 
            rs = dbo.executeQuery(sql);
            rs.next();
            return rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            dbo.close();
        }
    }
//	后台首页网友留言数
	public int getCount() { 
		String sql = "select count(*) from  guestbook ";
		 DBO dbo=new DBO();
        dbo.open();
        try { 
            rs = dbo.executeQuery(sql);
            rs.next();
            return rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            dbo.close();
        }
    }
//	后台首页网友会员数
	public int getMemberCount() { 
		String sql = "select count(*) from  member ";
		DBO dbo=new DBO();
        dbo.open();
        try { 
            rs = dbo.executeQuery(sql);
            rs.next();
            return rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            dbo.close();
        }
    }
//	后台首页招聘信息数
	public int getJobCount(String str) { 
		String sql = "select count(*) from "+str;
		DBO dbo=new DBO();
        dbo.open();
        try { 
            rs = dbo.executeQuery(sql);
            rs.next();
            return rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            dbo.close();
        }
    }
//	后台首页房产信息数
	public int getHouseCount(String table) { 
		String sql = "select count(*) from  "+table+" ";//buyhouse salehouse rentin rentout
		DBO dbo=new DBO();
        dbo.open();
        try { 
            rs = dbo.executeQuery(sql);
            rs.next();
            return rs.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            dbo.close();
        }
    }
	//编辑后台权限
	public int editQuanXian(int id ,String quanxian){
		String sql = "update admin set quanxian='"+quanxian+"' where id='"+id+"' ";
		DBO dbo=new DBO();
        dbo.open();
        try { 
            int i = dbo.executeUpdate(sql);
            if(i == 1){
            	return Constant.SUCCESS;
            }
            else {
            	return Constant.SYSTEM_ERROR;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            return Constant.SYSTEM_ERROR;
        } finally {
            dbo.close();
        }
	}
	//查询权限
	public String getQX(int id){
		String sql = "select quanxian from admin where id='"+id+"'";
		DBO dbo=new DBO();
        dbo.open();
        try { 
            rs=dbo.executeQuery(sql);
            rs.next();
            return rs.getString(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        } finally {
            dbo.close();
        }
	}
}
