package hrms.dao.admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import hrms.vo.AdminVo;
import hrms.vo.DepartmentsVo;
@Repository
public class LoginByAdminDaoImpl implements ILoginByAdminDao {
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	//管理员根据，用户和密码登录，根据状态判断是否成功
	@Override
	public AdminVo loginByAdmin(AdminVo adminVo) {
		// TODO Auto-generated method stub
		AdminVo loginByAdmin = jdbcTemplate.query("SELECT * from ADMIN WHERE adminname=? AND adminpwd = ?", 
				new Object[]{adminVo.getAdminName(),adminVo.getAdminPwd()},new ResultSetExtractor<AdminVo>(){

					@Override
					public AdminVo extractData(ResultSet rs) throws SQLException, DataAccessException {
						// TODO Auto-generated method stub
						if(rs.next()){
					String level= String.valueOf(rs.getInt(3)); 
						return new AdminVo(rs.getString(1),rs.getString(2),level);
						}return null;
					}});
		return loginByAdmin;
	}
	

}
