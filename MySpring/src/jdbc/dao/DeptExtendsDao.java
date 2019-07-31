package jdbc.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import jdbc.vo.Dept;

public class DeptExtendsDao extends JdbcTemplate {
	public void test(String name){
		System.out.println(name);
		System.out.println("ok");
	}
	//添加部门
	public boolean insertDept(Dept dept){
		int rs= 0 ;
		rs=this.update("insert into dept values(?,?,?)",new Object[]{dept.getDeptno(),dept.getDname(),dept.getLoc()});
		if(rs>0){
			return true;
		}
		return false;
	}
}
