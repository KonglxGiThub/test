package springJdbcMvc2.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springJdbcMvc2.vo.MVCUSER;
@Repository
public class DaoImpl implements IDao{
	//找的是xml里的id
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public boolean insertUser(MVCUSER user) {
		// TODO Auto-generated method stub
		int rs =jdbcTemplate.update(
		"insert into mvcuser values(?,?,?,?)",new Object[]{user.getId(),user.getName(),
				user.getAge(),user.getLocation()}); 
		if(rs>0){
			return true;
		}
		return false;
	}
	@Override
	public boolean delUser(MVCUSER user) {
		// TODO Auto-generated method stub
		int rs =jdbcTemplate.update(
		"delete mvcuser where id = ?",new Object[]{user.getId()}); 
		if(rs>0){
			return true;
		}
		return false;
	}


	@Override
	public boolean updateUser(MVCUSER user) {
		// TODO Auto-generated method stub
		int rs =jdbcTemplate.update(
				"update mvcuser set name=?,age=?,location=? where id=?",new Object[]{user.getName(),user.getAge(),
				user.getLocation(),user.getId()}); 
				if(rs>0){
					return true;
				}
				return false;
	}

	@Override
	public List<MVCUSER> listUser() {
		// TODO Auto-generated method stub
		List<MVCUSER> list=jdbcTemplate.query("select * from mvcuser",new RowMapper<MVCUSER>(){

			@Override
			public MVCUSER mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				return new MVCUSER(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4));
			}});
		return list;
	}

	@Override
	public MVCUSER user(MVCUSER user) {
		// TODO Auto-generated method stub
		MVCUSER u =(MVCUSER) jdbcTemplate.query("select * from mvcuser where id=?",new Object[]{user.getId()},
				new ResultSetExtractor<MVCUSER>(){

					@Override
					public MVCUSER extractData(ResultSet rs) throws SQLException, DataAccessException {
						// TODO Auto-generated method stub
						if(rs.next()){
							return new MVCUSER(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4));
						}return null;
					}});
		return u;
	}



}
