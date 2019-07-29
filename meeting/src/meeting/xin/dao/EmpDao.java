package meeting.xin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import meeting.xin.dbutil.DButil;
import meeting.xin.vo.EMP;

public class EmpDao {
	/**
	 * 人员管理搜索员工，分页查出所有员工记录
	 * */
	public int allPageEmp(){
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
		
			try {
				conn = DButil.getConnection();
				String sql="select COUNT(eid) from emp ";
				ps = conn.prepareStatement(sql);
				//System.out.println(sql);
			
				rs = ps.executeQuery();
				
				while(rs.next()){
					return rs.getInt(1);
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					DButil.close(conn, ps, rs);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return -1;
		
	}
	
	/**
	 * 人员管理搜索员工，分页
	 * */
	public ArrayList<EMP> pageEmp(int page){
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			ArrayList<EMP> pageempList = new ArrayList<EMP>();
			try {
				conn = DButil.getConnection();
				String sql="SELECT * FROM(SELECT * FROM (SELECT * FROM emp ORDER BY eid DESC) "
						+ "WHERE ROWNUM<=5*? MINUS SELECT * FROM (SELECT * FROM emp "
						+ "ORDER BY eid DESC) WHERE ROWNUM<=5*(?-1))ORDER BY eid DESC";
				ps = conn.prepareStatement(sql);
				//System.out.println(sql);
				ps.setInt(1, page);
				ps.setInt(2,page);
				rs = ps.executeQuery();
				
				while(rs.next()){
				pageempList.add(new EMP(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
				rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getInt(9),rs.getInt(10)));
				
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					DButil.close(conn, ps, rs);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return pageempList;
		
	}
	
	/**
	 * 预定的选择参会人员，根据部门id搜索员工
	 * */
	public ArrayList<EMP> searchEmpByDid(int did){
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			ArrayList<EMP> empList = new ArrayList<EMP>();
			try {
				conn = DButil.getConnection();
				String sql="SELECT e.* FROM emp e,dept d WHERE e.did=d.did AND D.did=?";
				ps = conn.prepareStatement(sql);
				ps.setInt(1, did);

				rs = ps.executeQuery();
				while(rs.next()){
				empList.add(new EMP(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
				rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getInt(9),rs.getInt(10)));
				
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					DButil.close(conn, ps, rs);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return empList;
		
	}
	/**
	 * 根据用户的登录名查id*/
	public EMP elnameSearchById(String elname){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DButil.getConnection();
			String sql="SELECT * FROM emp WHERE elname=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1,elname);
			rs = ps.executeQuery();
			if(rs.next()){
				return new EMP(rs.getInt(1));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
		
	}
	/**
	 * 根据用户的登录名判断用户的用户名是否重复，并查id*/
	public boolean elnameCheck(String elname){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DButil.getConnection();
			String sql="SELECT * FROM emp WHERE elname=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1,elname);
			rs = ps.executeQuery();
			if(rs.next()){
				return true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
		
	}
	/**
	 * 人员管理，注册审批，修改状态，参数，id和状态改为通过1
	 * 状态0待审批1通过2拒绝
	 * */
	public boolean updateStatusEmp(int eid,int estatus){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn=DButil.getConnection();
			String sql="UPDATE emp SET estatus = ? WHERE eid = ?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1,estatus);
			ps.setInt(2,eid);
			int rs =ps.executeUpdate();
			if(rs>0){
				return true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return false;
	}	
	/**
	 * 人员管理，根据人员id删除，参数，id
	 * 
	 * */
	public boolean delEmpById(int eid){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn=DButil.getConnection();
			String sql="DELETE emp WHERE eid=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1,eid);
			int rs =ps.executeUpdate();
			if(rs>0){
				return true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return false;
	}
	
	/**
	 * 用户登录，返回一个emp，在返回一个int状态0待审批1通过2拒绝
	 * */
	public EMP login(EMP emp){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DButil.getConnection();
			String sql = "select * from emp WHERE elname=? AND epass=?";
			ps = conn.prepareStatement(sql);
			
			//为？赋值，1表示给elname赋值（第一个问号）
			ps.setString(1, emp.getElname());
			ps.setString(2, emp.getEpass());
			rs = ps.executeQuery();
		//System.out.println(sql);
			if(rs.next()){
				return new EMP(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
			rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getInt(9));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return null;
	}

	/**
	 * 人员管理下的搜索员工，根据姓名，账户名，状态名查询
	 * */
	public ArrayList<EMP> searchEmp(String ename,String elname,int estatus){
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			ArrayList<EMP> empList = new ArrayList<EMP>();
			try {
				conn = DButil.getConnection();
				String sql="select * from emp WHERE ename=? "
						+ "AND elname=? AND estatus=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, ename);
				ps.setString(2, elname);
				ps.setInt(3, estatus);
				rs = ps.executeQuery();
				while(rs.next()){
				empList.add(new EMP(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
				rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getInt(9)));
				
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					DButil.close(conn, ps, rs);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return empList;
		
	}
	
	/**
	 * 人员管理下的搜索员工的显示全部
	 * */
	public ArrayList<EMP> searchEmp(){
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			ArrayList<EMP> empList = new ArrayList<EMP>();
			try {
				conn = DButil.getConnection();
				String sql="select * from emp ";
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()){
			
				empList.add( new EMP(rs.getInt(1),rs.getString(2),rs.getString(3),
		rs.getString(4),rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getInt(9)));
				
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					DButil.close(conn, ps, rs);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return empList;
		
	}
	
	/**
	 * 人员管理下的搜索员工的显示全部并且待审核
	 * */
	public ArrayList<EMP> checkingEmp(){
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			ArrayList<EMP> empList = new ArrayList<EMP>();
			try {
				conn = DButil.getConnection();
				String sql="select * from emp where estatus=0";
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()){
			
				empList.add( new EMP(rs.getInt(1),rs.getString(2),rs.getString(3),
		rs.getString(4),rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getInt(9)));
				
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					DButil.close(conn, ps, rs);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return empList;
		
	}
	/*
	 * 注册用户，部门存在
	 * 
	 * */
	public boolean register(EMP emp){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DButil.getConnection();
			String sql="INSERT INTO emp t(t.eid,t.ename,t.elname,t.epass,t.ephone,t.email,"
					+ "t.estatus,t.emanage,t.did) VALUES(emp_eid_seq.nextval,"
					+ "?,?,?,?,?,DEFAULT,DEFAULT,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, emp.getEname());
			ps.setString(2, emp.getElname());
			ps.setString(3, emp.getEpass());
			ps.setString(4, emp.getEphone());
			ps.setString(5, emp.getEmail());
			ps.setInt(6, emp.getDid());
			int rs = ps.executeUpdate();
			if(rs>0){
				return true;
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				DButil.close(conn, ps);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
}
