package com.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.util.Constant;
import com.util.DBO;

public class EmpBean {

	private List list;
	private ResultSet rs;
	private String date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
	private int EVERYPAGENUM = 2;
	private int count = -1;
	private int qq = 0;
	private String sql="select count(*) from emp  ";
	private String sql2="select * from emp order by id desc ";
	  public void setEVERYPAGENUM(int EVERYPAGENUM){
    	this.EVERYPAGENUM=EVERYPAGENUM;
    }
    public int getMessageCount() { //得到信息总数
       DBO dbo=new DBO();
       dbo.open();
        try { 
            rs = dbo.executeQuery(sql);
            rs.next();
            count = rs.getInt(1);
            return count;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return -1;
        } finally {
            dbo.close();
        }
    }
    public int getPageCount() { //得到共多少页（根据每页要显示几条信息）
        if (count % EVERYPAGENUM == 0) {
            return count / EVERYPAGENUM;
        } else {
            return count / EVERYPAGENUM + 1;
        }
    }
    public List getMessage(int page) { //得到每页要显示的信息
        DBO dbo=new DBO();
        dbo.open();
        List list = new ArrayList();
        try {
            rs = dbo.executeQuery(sql2);
            for (int i = 0; i < (page - 1) * EVERYPAGENUM; i++) {
                rs.next();
            }
            for (int t = 0; t < EVERYPAGENUM; t++) {
                if (rs.next()) {
                    qq++;
                    List list2=new ArrayList();
                    list2.add(rs.getString(1));
    				list2.add(rs.getString(2));
    				list2.add(rs.getString(3));
    				list2.add(rs.getString(4));
    				list2.add(rs.getString(5));
    				list2.add(rs.getString(6));
    				list2.add(rs.getString(7));
    				list2.add(rs.getString(8));
    				list2.add(rs.getString(9));
    				list2.add(rs.getString(10));
    				list.add(list2);
                } else {
                    break; //减少空循环的时间
                }
            }
            return list;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return list;
        } finally {
            dbo.close();
        }
    }
	/////////////////////////////////////////////////////////////// 售后服务分类信息录入
	public int addDep(String name){
		String sql="insert into depart(name,addtime) values('"+name+"','"+date+"')";
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
	
	///////////////////////////////////////////////////////////// 分类信息删除
	public int delDep(String id){
		String sql="delete from depart where id='"+id+"' ";
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
	////////////////////////////////////////////////////////////所有分类信息
	public List getDep(){ 
		String sql = "select * from depart order by id desc ";
		DBO dbo=new DBO();
		list = new ArrayList();
		dbo.open();
		try{
			rs = dbo.executeQuery(sql);
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list.add(list2);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			dbo.close();
		}
	}
	///////////////////////////////////////////////////////////// 售后服务信息管理 增加 
	public int addEmp(String name,String sex,String bir,String departs,String zhiwu,String tel,String address,String remark){
		String sql="insert into emp(name,sex,bir,departs,zhiwu,tel,address,remark,addtime) " +
				"values('"+name+"','"+sex+"','"+bir+"','"+departs+"','"+zhiwu+"','"+tel+"','"+address+"','"+remark+"','"+date+"') ";
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
//	/修改 售后服务信息
	public int upEmp(String id,String name,String sex,String bir,String departs,String zhiwu,String tel,String address,String remark){
		String sql="update emp set name='"+name+"',sex='"+sex+"',bir='"+bir+"',departs='"+departs+"',zhiwu='"+zhiwu+"'," +
				"tel='"+tel+"',address='"+address+"',remark='"+remark+"'  where id='"+id+"' ";
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
//	/删除售后服务信息
	public int delEmp(String id){
		String sql="delete from emp where id='"+id+"'";
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
//	/查询某个售后服务信息
	public List getEmp(String id){ 
		String sql = "select * from emp where id='"+id+"' ";
		DBO dbo=new DBO();
		list = new ArrayList();
		dbo.open();
		try{
			rs = dbo.executeQuery(sql);
			if(rs.next()){
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
				list.add(rs.getString(4));
				list.add(rs.getString(5));
				list.add(rs.getString(6));
				list.add(rs.getString(7));
				list.add(rs.getString(8));
				list.add(rs.getString(9));
				list.add(rs.getString(10));
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
//	/查询 
	public List getEmpId( ){ 
		String sql = "select id from emp order by id desc ";
		DBO dbo=new DBO();
		list = new ArrayList();
		dbo.open();
		try{
			rs = dbo.executeQuery(sql);
			while(rs.next()){
				list.add(rs.getString(1));
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	} 
	/////////////////////////////////////////////////////// 信息 增加产品安装信息
	public int addAtt(String eid,String type,String money,String ftime,String remark){
		String sql = "insert into attend(eid,type,money,ftime,remark,addtime) " +
				"values('"+eid+"','"+type+"','"+money+"','"+ftime+"','"+remark+"','"+date+"')";
		DBO dbo=new DBO();
		list = new ArrayList();
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
//	/更改 产品安装信息
	public int upAtt(String id,String eid,String type,String money,String ftime,String remark){
		String sql = "update attend set eid='"+eid+"',type='"+type+"',money='"+money+"',ftime='"+ftime+"',remark='"+remark+"' where id='"+id+"'";
		DBO dbo=new DBO();
		list = new ArrayList();
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
//	/删除产品安装信息
	public int delAtt(String id ){
		String sql = "delete from attend where id='"+id+"'";
		DBO dbo=new DBO();
		list = new ArrayList();
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
//	/查询某个产品安装信息
	public List getAtt(String id){ 
		String sql = "select * from attend where id='"+id+"' ";
		DBO dbo=new DBO();
		list = new ArrayList();
		dbo.open();
		try{
			rs = dbo.executeQuery(sql);
			if(rs.next()){
				list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
				list.add(rs.getString(4));
				list.add(rs.getString(5));
				list.add(rs.getString(6));
				list.add(rs.getString(7));
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
//	/搜索某产品安装信息
	public List getAttSearch(String id){
		String sql="select * from attend where id='"+id+"'";
		DBO dbo=new DBO();
		list = new ArrayList();  
		dbo.open();
		try{
			rs = dbo.executeQuery(sql);  
			while(rs.next()){
				List list2=new ArrayList();
				list2.add(rs.getString(1));
				list2.add(rs.getString(2));
				list2.add(rs.getString(3));
				list2.add(rs.getString(4));
				list2.add(rs.getString(5));
				list2.add(rs.getString(6));
				list2.add(rs.getString(7));
				list.add(list2); 
			} 
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}finally{
			dbo.close();
		}
	}
	public int getMessageCountAtt() { //得到信息总数
		String sql="select count(*) from attend ";
	       DBO dbo=new DBO();
	       dbo.open();
	        try { 
	            rs = dbo.executeQuery(sql);
	            rs.next();
	            count = rs.getInt(1);
	            return count;
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            return -1;
	        } finally {
	            dbo.close();
	        }
	    }
	    
	    public List getMessageAtt(int page) { //得到每页要显示的信息
	    	String sql2="select * from attend  order by id desc";
	        DBO dbo=new DBO();
	        dbo.open();
	        List list = new ArrayList();
	        try {
	            rs = dbo.executeQuery(sql2);
	            for (int i = 0; i < (page - 1) * EVERYPAGENUM; i++) {
	                rs.next();
	            }
	            for (int t = 0; t < EVERYPAGENUM; t++) {
	                if (rs.next()) {
	                    qq++;
	                    List list2=new ArrayList();
	                    list2.add(rs.getString(1));
	    				list2.add(rs.getString(2));
	    				list2.add(rs.getString(3));
	    				list2.add(rs.getString(4));
	    				list2.add(rs.getString(5));
	    				list2.add(rs.getString(6));
	    				list2.add(rs.getString(7));
	    				list.add(list2);
	                } else {
	                    break; //减少空循环的时间
	                }
	            }
	            return list;
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            return list;
	        } finally {
	            dbo.close();
	        }
	    }
	    ///////////////////////////////////////////////////////////////////////////////////维修信息
		public int addWx(String name,String co,String bir,String nr,String jine,String remark){
			String sql = "insert into weixiu(name,co,bir,nr,jine,remark,addtime) " +
					"values('"+name+"','"+co+"','"+bir+"','"+nr+"','"+jine+"','"+remark+"','"+date+"')";
			DBO dbo=new DBO();
			list = new ArrayList();
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
//		/更改  
		public int upWx(String id,String name,String co,String bir,String nr,String jine,String remark){
			String sql = "update weixiu set name='"+name+"',co='"+co+"',bir='"+bir+"',nr='"+nr+"',jine='"+jine+"',remark='"+remark+"' where id='"+id+"'";
			DBO dbo=new DBO();
			list = new ArrayList();
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
//		/删除 
		public int delWx(String id ){
			String sql = "delete from weixiu where id='"+id+"'";
			DBO dbo=new DBO();
			list = new ArrayList();
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
//		/查询某个 
		public List getWx(String id){ 
			String sql = "select * from weixiu where id='"+id+"' ";
			DBO dbo=new DBO();
			list = new ArrayList();
			dbo.open();
			try{
				rs = dbo.executeQuery(sql);
				if(rs.next()){
					list.add(rs.getString(1));
					list.add(rs.getString(2));
					list.add(rs.getString(3));
					list.add(rs.getString(4));
					list.add(rs.getString(5));
					list.add(rs.getString(6));
					list.add(rs.getString(7));
					list.add(rs.getString(8));
				}
				return list;
			}catch(Exception e){
				e.printStackTrace();
				return list;
			}finally{
				dbo.close();
			}
		}
//		/搜索 
		public List getWxSearch(String id){
			String sql="select * from weixiu where id='"+id+"'";
			DBO dbo=new DBO();
			list = new ArrayList();  
			dbo.open();
			try{
				rs = dbo.executeQuery(sql);  
				if(rs.next()){
					list.add(rs.getString(1));
					list.add(rs.getString(2));
					list.add(rs.getString(3));
					list.add(rs.getString(4));
					list.add(rs.getString(5));
					list.add(rs.getString(6));
					list.add(rs.getString(7));
					list.add(rs.getString(8));
					
				} 
				return list;
			}catch(Exception e){
				e.printStackTrace();
				return list;
			}finally{
				dbo.close();
			}
		}
		public int getMessageCountWx() { //得到信息总数
			String sql="select count(*) from weixiu ";
		       DBO dbo=new DBO();
		       dbo.open();
		        try { 
		            rs = dbo.executeQuery(sql);
		            rs.next();
		            count = rs.getInt(1);
		            return count;
		        } catch (SQLException ex) {
		            ex.printStackTrace();
		            return -1;
		        } finally {
		            dbo.close();
		        }
		    }
		    
		    public List getMessageWx(int page) { //得到每页要显示的信息
		    	String sql2="select * from weixiu  order by id desc";
		        DBO dbo=new DBO();
		        dbo.open();
		        List list = new ArrayList();
		        try {
		            rs = dbo.executeQuery(sql2);
		            for (int i = 0; i < (page - 1) * EVERYPAGENUM; i++) {
		                rs.next();
		            }
		            for (int t = 0; t < EVERYPAGENUM; t++) {
		                if (rs.next()) {
		                    qq++;
		                    List list2=new ArrayList();
		                    list2.add(rs.getString(1));
		    				list2.add(rs.getString(2));
		    				list2.add(rs.getString(3));
		    				list2.add(rs.getString(4));
		    				list2.add(rs.getString(5));
		    				list2.add(rs.getString(6));
		    				list2.add(rs.getString(7));
		    				list2.add(rs.getString(8));
		    				list.add(list2);
		                } else {
		                    break; //减少空循环的时间
		                }
		            }
		            return list;
		        } catch (SQLException ex) {
		            ex.printStackTrace();
		            return list;
		        } finally {
		            dbo.close();
		        }
		    }
		    ////////////////////////////////////////////////////////////////////产品退换信息
			public int addTh(String name,String co,String bir,String nr,String remark){
				String sql = "insert into tuihuan(name,co,bir,nr,remark,addtime) " +
						"values('"+name+"','"+co+"','"+bir+"','"+nr+"' ,'"+remark+"','"+date+"')";
				DBO dbo=new DBO();
				list = new ArrayList();
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
//			/更改  
			public int upTh(String id,String name,String co,String bir,String nr, String remark){
				String sql = "update tuihuan set name='"+name+"',co='"+co+"',bir='"+bir+"',nr='"+nr+"' ,remark='"+remark+"' where id='"+id+"'";
				DBO dbo=new DBO();
				list = new ArrayList();
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
//			/删除 
			public int delTh(String id ){
				String sql = "delete from tuihuan where id='"+id+"'";
				DBO dbo=new DBO();
				list = new ArrayList();
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
//			/查询某个 
			public List getTh(String id){ 
				String sql = "select * from tuihuan where id='"+id+"' ";
				DBO dbo=new DBO();
				list = new ArrayList();
				dbo.open();
				try{
					rs = dbo.executeQuery(sql);
					if(rs.next()){
						list.add(rs.getString(1));
						list.add(rs.getString(2));
						list.add(rs.getString(3));
						list.add(rs.getString(4));
						list.add(rs.getString(5));
						list.add(rs.getString(6));
						list.add(rs.getString(7));
					}
					return list;
				}catch(Exception e){
					e.printStackTrace();
					return list;
				}finally{
					dbo.close();
				}
			}
//			/搜索 
			public List getThSearch(String id){
				String sql="select * from tuihuan where id='"+id+"'";
				DBO dbo=new DBO();
				list = new ArrayList();  
				dbo.open();
				try{
					rs = dbo.executeQuery(sql);  
					if(rs.next()){
						list.add(rs.getString(1));
						list.add(rs.getString(2));
						list.add(rs.getString(3));
						list.add(rs.getString(4));
						list.add(rs.getString(5));
						list.add(rs.getString(6));
						list.add(rs.getString(7)); 
						
					} 
					return list;
				}catch(Exception e){
					e.printStackTrace();
					return list;
				}finally{
					dbo.close();
				}
			}
			public int getMessageCountTh() { //得到信息总数
				String sql="select count(*) from tuihuan ";
			       DBO dbo=new DBO();
			       dbo.open();
			        try { 
			            rs = dbo.executeQuery(sql);
			            rs.next();
			            count = rs.getInt(1);
			            return count;
			        } catch (SQLException ex) {
			            ex.printStackTrace();
			            return -1;
			        } finally {
			            dbo.close();
			        }
			    }
			    
			    public List getMessageTh(int page) { //得到每页要显示的信息
			    	String sql2="select * from tuihuan  order by id desc";
			        DBO dbo=new DBO();
			        dbo.open();
			        List list = new ArrayList();
			        try {
			            rs = dbo.executeQuery(sql2);
			            for (int i = 0; i < (page - 1) * EVERYPAGENUM; i++) {
			                rs.next();
			            }
			            for (int t = 0; t < EVERYPAGENUM; t++) {
			                if (rs.next()) {
			                    qq++;
			                    List list2=new ArrayList();
			                    list2.add(rs.getString(1));
			    				list2.add(rs.getString(2));
			    				list2.add(rs.getString(3));
			    				list2.add(rs.getString(4));
			    				list2.add(rs.getString(5));
			    				list2.add(rs.getString(6));
			    				list2.add(rs.getString(7)); 
			    				list.add(list2);
			                } else {
			                    break; //减少空循环的时间
			                }
			            }
			            return list;
			        } catch (SQLException ex) {
			            ex.printStackTrace();
			            return list;
			        } finally {
			            dbo.close();
			        }
			    }
			    /////////////////////////////////////////////////////////////////回访
				public int addHf(String name,String co,String bir,String nr,String remark){
					String sql = "insert into huifang(name,co,bir,nr,remark,addtime) " +
							"values('"+name+"','"+co+"','"+bir+"','"+nr+"' ,'"+remark+"','"+date+"')";
					DBO dbo=new DBO();
					list = new ArrayList();
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
//				/更改  
				public int upHf(String id,String name,String co,String bir,String nr, String remark){
					String sql = "update huifang set name='"+name+"',co='"+co+"',bir='"+bir+"',nr='"+nr+"' ,remark='"+remark+"' where id='"+id+"'";
					DBO dbo=new DBO();
					list = new ArrayList();
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
//				/删除 
				public int delHf(String id ){
					String sql = "delete from huifang where id='"+id+"'";
					DBO dbo=new DBO();
					list = new ArrayList();
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
//				/查询某个 
				public List getHf(String id){ 
					String sql = "select * from huifang where id='"+id+"' ";
					DBO dbo=new DBO();
					list = new ArrayList();
					dbo.open();
					try{
						rs = dbo.executeQuery(sql);
						if(rs.next()){
							list.add(rs.getString(1));
							list.add(rs.getString(2));
							list.add(rs.getString(3));
							list.add(rs.getString(4));
							list.add(rs.getString(5));
							list.add(rs.getString(6));
							list.add(rs.getString(7));
						}
						return list;
					}catch(Exception e){
						e.printStackTrace();
						return list;
					}finally{
						dbo.close();
					}
				}
//				/搜索 
				public List getHfSearch(String id){
					String sql="select * from huifang where id='"+id+"'";
					DBO dbo=new DBO();
					list = new ArrayList();  
					dbo.open();
					try{
						rs = dbo.executeQuery(sql);  
						if(rs.next()){
							list.add(rs.getString(1));
							list.add(rs.getString(2));
							list.add(rs.getString(3));
							list.add(rs.getString(4));
							list.add(rs.getString(5));
							list.add(rs.getString(6));
							list.add(rs.getString(7)); 
							
						} 
						return list;
					}catch(Exception e){
						e.printStackTrace();
						return list;
					}finally{
						dbo.close();
					}
				}
				public int getMessageCountHf() { //得到信息总数
					String sql="select count(*) from huifang ";
				       DBO dbo=new DBO();
				       dbo.open();
				        try { 
				            rs = dbo.executeQuery(sql);
				            rs.next();
				            count = rs.getInt(1);
				            return count;
				        } catch (SQLException ex) {
				            ex.printStackTrace();
				            return -1;
				        } finally {
				            dbo.close();
				        }
				    }
				    
				    public List getMessageHf(int page) { //得到每页要显示的信息
				    	String sql2="select * from huifang  order by id desc";
				        DBO dbo=new DBO();
				        dbo.open();
				        List list = new ArrayList();
				        try {
				            rs = dbo.executeQuery(sql2);
				            for (int i = 0; i < (page - 1) * EVERYPAGENUM; i++) {
				                rs.next();
				            }
				            for (int t = 0; t < EVERYPAGENUM; t++) {
				                if (rs.next()) {
				                    qq++;
				                    List list2=new ArrayList();
				                    list2.add(rs.getString(1));
				    				list2.add(rs.getString(2));
				    				list2.add(rs.getString(3));
				    				list2.add(rs.getString(4));
				    				list2.add(rs.getString(5));
				    				list2.add(rs.getString(6));
				    				list2.add(rs.getString(7)); 
				    				list.add(list2);
				                } else {
				                    break; //减少空循环的时间
				                }
				            }
				            return list;
				        } catch (SQLException ex) {
				            ex.printStackTrace();
				            return list;
				        } finally {
				            dbo.close();
				        }
				    }
}
