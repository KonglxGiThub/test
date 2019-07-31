package jdbc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import jdbc.vo.Dept;

public class DeptDao {
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public void test(String name){
		System.out.println(name);
		System.out.println("ok");
	}
	
	//添加部门,增删改都用update，查询不是
	public boolean insertDept(Dept dept){
		//获得返回值
		int rs = 0;
		//返回受影响的行数
		rs = jdbcTemplate.update("insert into dept values(?,?,?)", new Object[]{dept.getDeptno(),dept.getDname(),dept.getLoc()});
		if(rs>0){
			return true;
		}
		return false;
		
	}
	//
	public boolean delDept(Dept dept){
		int rs=0;
		rs=jdbcTemplate.update("delete dept where deptno =?",new Object[]{dept.getDeptno()});
		if(rs>0){
			return true;
		}
		return false;
	}
	//
	public boolean updateDept(Dept dept){
		int rs=0;
		rs=jdbcTemplate.update("update dept set dname =?,loc=? where deptno=?",new Object[]{dept.getDname(),dept.getLoc(),dept.getDeptno()});
		if(rs>0){
		return true;	
		}
		return false;
	}
	//单个查询
	public Dept selDept(Dept dept){
		Dept d=jdbcTemplate.query("select * from dept where deptno=?", new Object[]{dept.getDeptno()}, new ResultSetExtractor<Dept>(){

			@Override
			public Dept extractData(ResultSet arg0) throws SQLException, DataAccessException {
				// TODO Auto-generated method stub
			if(arg0.next()){
				return new Dept(arg0.getInt(1),arg0.getString(2),arg0.getString(3));
			}
			return null;
			}});
		return d;
	}
	//多个查询
	public List<Dept>selAllDept(){
		List<Dept> list=jdbcTemplate.query("select * from dept", new RowMapper<Dept>(){

			@Override
			public Dept mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				//返回每一行的数据，不需要while(rs.next())
				//返回的结果传给list,这个不能加while(rs.next())
				//从零开始;
				//System.out.print(arg1);
				return new Dept(rs.getInt(1),rs.getString(2),rs.getString(3));
				
				
			}});
		return list;
	}

}
