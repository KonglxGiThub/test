package com.services;
/**
 * JDBC计数体系,在整个java中,就是两个包下的内容
 * java.sql.*  (JDBC基础部分)
 * javax.sql.* (JDBC扩展部分)
 * 
 * java.sql包的主要内容
 * 
 *  1.java.sql.Connection   ---  到url所标志的数据库的连接
 */

//驱动管理器
import java.sql.DriverManager;
//到目标数据库的连接
import java.sql.Connection;
//预编译语句对象--本次连接需要执行的SQL语句
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.db.DBUtils;
/**
 * services的所有方法,全部抛出异常
 * 谁去调用谁就处理异常
 * @author new
 *
 */
public final class PersonServices {
	//向表中添加数据
	public void addPerson() throws Exception{
		//1定义数据库驱动串
		String dirver="oracle.jdbc.driver.OracleDriver";
		//2定义数据库的连接串
		String url = url="jdbc:oracle:thin:@localhost:1521:orcl";
		//3加载驱动进内存
		Class.forName(dirver);
		//4通过驱动管理取到目标数据库的链接
		Connection conn = DriverManager.getConnection(url,"test","test");
		System.out.println(conn);
		//5定义sql语句
		String sql = "INSERT INTO PERSON(PID,PNAME,PSEX,MZ,STATE,MONEY)";
		       sql+="              VALUES(?,?,?,?,?,?)";
		//System.out.println(sql);
		//6通过链接对象，编译sql语句，生成语句对象
		PreparedStatement pstm = conn.prepareStatement(sql);
		//7为语句对象的？参数赋值
		pstm.setObject(1,1);
		pstm.setObject(2,"孔令新");
		pstm.setObject(3,"男");
		pstm.setObject(4,"汉族");
		pstm.setObject(5,"1");
		pstm.setObject(6,100);
		//8通过语句对象执行sql语句
		//返回值表示该语句执行后,影响的记录数,如果成功,那么值大于0,否则为0
		int tag = pstm.executeUpdate();
		System.out.println("tag= "+tag);
	}
	public boolean del(int pid) throws Exception{
		//1定义链接及语句对象
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			//2.创建连接
			conn = DBUtils.getConnection();
			//3编写sql语句
			String sql = "DELETE FROM PERSON WHERE PID=? ";
			//4编译sql语句
			pstm = conn.prepareStatement(sql);
			//5?赋值
			pstm.setObject(1,pid);
			//6执行sql语句
			return pstm.executeUpdate()>0;
		}
		finally{
			DBUtils.close(pstm);
			DBUtils.close(conn);
		}
	}
	/**
	 * 应用动态参数列表,修改参数传递
	 * @param val  -- ?参数列表  String val[]={pid,pname,psex,mz,state,money}
	 * @throws Exception
	 */
//	public void addPerson(String...val)throws Exception
//	{
//	    Connection conn=DBUtils.getConnection();
//	    System.out.println(conn);
//		//5.编写SQL语句
//		String sql="INSERT INTO PERSON(PID,PNAME,PSEX,MZ,STATE,MONEY)";
//	      sql+="            VALUES(?,?,?,?,?,?)";
//		//6.编译SQL
//	    PreparedStatement pstm=conn.prepareStatement(sql);  
//		//7.?传参
//	    pstm.setObject(1, val[0]);
//	    pstm.setObject(2, val[1]);
//	    pstm.setObject(3, val[2]);
//	    pstm.setObject(4, val[3]);
//	    pstm.setObject(5, val[4]);
//	    pstm.setObject(6, val[5]);
//		//8.执行SQL语句
//	    int tag=pstm.executeUpdate();
//	    System.out.println(tag);
//	}
	/**
	 * 
	 * @param val   String val[]={pname,psex,mz,state,money};
	 * @return
	 * @throws Exception
	 */
   public boolean addPerson(String...val)throws Exception
   {
	  Connection conn=null;
	  PreparedStatement pstm=null;
      try
      {
		   //1.创建连接
		   conn=DBUtils.getConnection();
		   //2.编写SQL语句
		   String sql="INSERT INTO PERSON(PID,PNAME,PSEX,MZ,STATE,MONEY)";
		         sql+="            VALUES(S_PER.NEXTVAL,?,?,?,?,?)";
		   //3.编译SQL语句
		   pstm=conn.prepareStatement(sql);
		   //4.?赋值
		   //4.1计算?的个数
		   int size=val.length;   //5
		   //4.2通过循环为?赋值
		   for(int i=0;i<size;i++)  //0..4
		   {
			   pstm.setObject(i+1, val[i]);
		   }
		   //5.执行SQL语句
		   return pstm.executeUpdate()>0;
      }
      finally
      {
    	 DBUtils.close(pstm);
    	 DBUtils.close(conn);
      }
   }
	
	/**
	 * 可以接收外部数据
	 * @param pid
	 * @param pname
	 * @param psex
	 * @param mz
	 * @param state
	 * @param money
	 * @throws Exception
	 */
	public void addPerson(int pid,String pname,String psex,String mz,String state,double money)throws Exception
	{
		Connection conn=DBUtils.getConnection();
		//5.编写SQL语句
		String sql="INSERT INTO PERSON(PID,PNAME,PSEX,MZ,STATE,MONEY)";
		      sql+="            VALUES(?,?,?,?,?,?)";
		//6.编译SQL语句
		PreparedStatement pstm=conn.prepareStatement(sql);
		//7.为?赋值
		pstm.setObject(1, pid);
		pstm.setObject(2, pname);
		pstm.setObject(3, psex);
		pstm.setObject(4, mz);
		pstm.setObject(5, state);
		pstm.setObject(6, money);
		//8.执行SQL语句
		int tag=pstm.executeUpdate();
		System.out.println(tag);
	}
	
	/**
	 * JDBC对象如果不被销毁会造成内存泄露
	 * 内存泄露:创建对象时候,开辟的内存,无法被回收,造成可用内存总量减少,影响系统性能
	 * @param val
	 * @return
	 * @throws Exception 
	 * @throws Exception
	 */
	public boolean modify(String...val) throws Exception{
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			conn = DBUtils.getConnection();
			String sql = "UPDATE PERSON";
			       sql+= "   SET MZ=?,STATE=?,MONEY=MONEY+?";
			       sql+=" WHERE PID = ?";
			pstm = conn.prepareStatement(sql);
			int size = val.length;
			for(int i=0;i<size;i++){
				pstm.setObject(i+1,val[i]);
			}
			return pstm.executeUpdate()>0;
		}
		finally{
			//销毁对象
			DBUtils.close(pstm);
			DBUtils.close(conn);
		}
	}

}























