package hrms.dao.dept;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import hrms.vo.DepartmentsVo;
@Repository
public class DeptDaoImpl implements IDeptDao {
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	@Override
	public List<DepartmentsVo> listDept() {
		// TODO Auto-generated method stub
		List<DepartmentsVo> list = jdbcTemplate.query("select * from departments",new RowMapper<DepartmentsVo>(){

			@Override
			public DepartmentsVo mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				return new DepartmentsVo(rs.getInt(1),rs.getString(2),rs.getString(3));
			}});
		return list;
	}

	@Override
	public boolean upadteDept(DepartmentsVo dept) {
		// TODO Auto-generated method stub
		int rs=0;
		rs = jdbcTemplate.update("UPDATE departments d SET d.department_name=?,d.location_name=? "
				+ "WHERE d.department_id=?",new Object[]{dept.getDepartmentName(),dept.getLocationName(),
						dept.getDepartmentId()});
		if(rs>0){
			return true;
		}
		
		return false;
	}

	@Override
	public boolean deleteDept(DepartmentsVo dept) {
		// TODO Auto-generated method stub
		int rs=0;
		rs = jdbcTemplate.update("delete departments WHERE department_id = ?",new Object[]{dept.getDepartmentId()});
		if(rs>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insertDept(DepartmentsVo dept) {
		// TODO Auto-generated method stub
		int rs = 0;
		rs = jdbcTemplate.update("INSERT INTO DEPARTMENTs  VALUES(?,?,?)",
				new Object[]{dept.getDepartmentId(),dept.getDepartmentName(),dept.getLocationName()});
		if(rs>0){
			return true;
		}
		return false;
	}

}
