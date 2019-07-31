package com.neusoft.services;

import java.sql.*;
import java.util.*;
import com.neusoft.system.db.DBUtils;

public final class StudentServices 
{
	/**
	 * �������ɾ��
	 * <
	 *   ��������----һ���������,��һ��������,�ظ�ִ�ж��
	 *   
	 *   �����ύ
	 *   JDBC������
	 * >
	 * @param val== ҳ��checkbox�γɵ�����  {"2","5","41"}
	 * @return
	 * @throws Exception
	 */
	public boolean delete(String...val)throws Exception
	{
		Connection conn=null;
		PreparedStatement pstm=null;
		try
		{
			conn=DBUtils.getConnection();
			String sql="DELETE FROM STUDENT WHERE STUID=?";
			pstm=conn.prepareStatement(sql);
			//1.�������ִ�еĴ���
			int size=val.length;
			//2.ͨ��ѭ����׼���õ�SQL��������ݿ⻺����
			for(int i=0;i<size;i++)
			{
				pstm.setObject(1, val[i]);   //DELETE FROM STUDENT WHERE STUID=41
				//��׼���õ�SQL���뻺����
				pstm.addBatch();
			}
			
			//3.������ķ�ʽ,ִ�л������е�����SQL���
			//3.1 �������񷵻�ֵ����
			boolean tag=false;
			//3.2��������--������������ʱ��,�Ȳ�Ҫ�޸����,�ȴ��Ժ���������ݵ��޸�
			conn.setAutoCommit(false);
			try
			{
				//3.3������Χ��,ִ��SQL���
				pstm.executeBatch();  //ִ�л����������SQL���
				//3.4.1������ִ�гɹ�,��ô�޸���ݿ�---�ύ����
				conn.commit();
				//3.5.�޸����񷵻�ֵ,ȷ������ִ�гɹ�
				tag=true;
			}
			catch(Exception ex)  //---��׽����ִ�й����,�����쳣
			{
				//3.4.2�ع�����---ȡ��������漰����������޸�
				conn.rollback();
				ex.printStackTrace();
			}
			finally
			{
				//3.6--��������
				conn.setAutoCommit(true);
			}
			//����tag,��ʶ����ִ�гɹ�����ʧ��
			return tag;
		}
		finally
		{
			DBUtils.close(pstm);
			DBUtils.close(conn);
		}
	}
	
	/**
	 * ��ѯ����
	 * @return
	 * @throws Exception
	 */
	public List<Map> query()throws Exception
	{
		Connection conn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try
		{
			StringBuilder sql=new StringBuilder()
			.append("SELECT X.STUID,X.SNAME,X.SNUMBER,TO_CHAR(X.SHENGRI,'YYYY-MM-DD') SHENGRI,")
			.append("       A.FVALUE CNSEX,B.FVALUE CNMINZU,C.FVALUE CNZHUANYE")
			.append("  FROM SYSCODE A,SYSCODE B,SYSCODE C,STUDENT X")
			.append(" WHERE X.SEX=A.FCODE     AND A.FNAME='SEX'")
			.append("   AND X.MINZU=B.FCODE   AND B.FNAME='MINZU'")
			.append("   AND X.ZHUANYE=C.FCODE AND C.FNAME='ZHUANYE'")
			.append(" ORDER BY X.SNAME")
			;
		   
			conn=DBUtils.getConnection();
			pstm=conn.prepareStatement(sql.toString());
			System.out.println(sql);
			rs=pstm.executeQuery();
			ResultSetMetaData rsmd=rs.getMetaData();
			int count=rsmd.getColumnCount();
			
			List<Map> rows=new ArrayList<Map>();
			Map<String,String> ins=null;
			while(rs.next())
			{
				ins=new HashMap<String,String>();
				for(int i=1;i<=count;i++)
				{
					ins.put(rsmd.getColumnLabel(i), rs.getString(i));
				}
				rows.add(ins);
			}
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
	 * ���ѧ��
	 * @param val={SNAME,SNUMBER,SHENGRI,SEX,MINZU,ZHUANYE,BEIZHU}
	 * @return
	 * @throws Exception
	 */
   public boolean addStudent(String...val)throws Exception
   {
	   Connection conn=null;
	   PreparedStatement pstm=null;
	   try
	   {
		   conn=DBUtils.getConnection();
		   StringBuilder sql=new StringBuilder()
		   .append("INSERT INTO STUDENT(STUID,SNAME,SNUMBER,SHENGRI,SEX,MINZU,ZHUANYE,BEIZHU)")
		   .append("VALUES(S_STU.NEXTVAL,?,?,TO_DATE(?,'YYYY-MM-DD'),?,?,?,?)")
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
