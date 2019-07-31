package com.neusoft.services;

import java.sql.*;
import java.util.*;
import com.neusoft.system.db.DBUtils;

public final class LyBookServices 
{
	public boolean delete(String lid)throws Exception
	{
		Connection conn=null;
		PreparedStatement pstm=null;
		try
		{
			conn=DBUtils.getConnection();
			String sql="DELETE FROM LYBOOK WHERE LID=?";
			pstm=conn.prepareStatement(sql);
			pstm.setObject(1, lid);
			return pstm.executeUpdate()>0;
		}
		finally
		{
			DBUtils.close(pstm);
			DBUtils.close(conn);
		}
	}
	
	
	/**
	 * 数据查询方法
	 * @return
	 * @throws Exception
	 */
	public List query()throws Exception
	{
		Connection conn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try
		{
			conn=DBUtils.getConnection();
			StringBuilder sql=new StringBuilder()
			.append("SELECT A.LID,A.LYR,A.LYBT,A.LYNR,A.LYSJ")
			.append("  FROM LYBOOK A")
			.append(" ORDER BY A.LID DESC ")
			;
			pstm=conn.prepareStatement(sql.toString());
			rs=pstm.executeQuery();
			
			//1.定义List装载全部数据
			List rows=new ArrayList();
			//2.定义装载当前行数据的Map对象
			Map ins=null;
			//3.通过循环解析rs结果集
			while(rs.next())
			{
				//4.将装载当前行数据的Map对象,实例化
				ins=new HashMap();
				//5.以列的标题,作为Map的key,该列对应数据作为Map的value,封装当前行,所有的列
				ins.put("LID", rs.getString(1));
				ins.put("LYR", rs.getString(2));
				ins.put("LYBT", rs.getString(3));
				ins.put("LYNR", rs.getString(4));
				ins.put("LYSJ", rs.getString(5));
				//6.将装载当前行数据的map对象放入List
				rows.add(ins);
			}
			//7将List返回
			return rows;
		}
		finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm);
			DBUtils.close(conn);
		}
	}
	
	/**
	 * 留言添加
	 * @param val
	 * @return
	 * @throws Exception
	 */
   public boolean addLybook(String...val)throws Exception
   {
	   Connection conn=null;
	   PreparedStatement pstm=null;
	   try
	   {
		   conn=DBUtils.getConnection();
		   StringBuilder sql=new StringBuilder()
		   .append("INSERT INTO LYBOOK(LID,LYR,LYBT,LYNR,LYSJ)")
		   .append("        VALUES(S_LY.NEXTVAL,?,?,?,SYSDATE)")
		   ;
		   pstm=conn.prepareStatement(sql.toString());
		   int size=val.length;
		   for(int i=0;i<size;i++)
		   {
			   pstm.setObject(i+1, val[i]);
		   }
		   return pstm.executeUpdate()>0;
	   }
	   finally
	   {
		   DBUtils.close(pstm);
		   DBUtils.close(conn);
	   }
   }
}
