package springmvcwork.xin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import springmvcwork.xin.vo.MVCUSER;


public class DaoUserImpl implements IDaoUser{
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public boolean insert(MVCUSER user) {
		// TODO Auto-generated method stub
		int rs=0;
		rs=jdbcTemplate.update("insert into mvcuser values(?,?,?,?)",new Object[]{user.getId(),user.getName(),user.getAge(),
				user.getLocation()});
		if(rs>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updeateUser(MVCUSER user) {
		// TODO Auto-generated method stub
		int rs=0;
		rs=jdbcTemplate.update("UPDATE mvcuser SET NAME=?,age=?,LOCATION =? WHERE ID=?",
				new Object[]{user.getName(),user.getAge(),user.getLocation(),user.getId()});
		if(rs>0){
			return true;
		}
		return false;

	}

	@Override
	public boolean deleteUser(MVCUSER user) {
		// TODO Auto-generated method stub
		int rs=0;
		rs=jdbcTemplate.update("DELETE mvcuser WHERE ID=?",
				new Object[]{user.getId()});
		if(rs>0){
			return true;
		}
		return false;

	}


	@Override
	public MVCUSER user(MVCUSER user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MVCUSER> selAllUser() {
		// TODO Auto-generated method stub
		List<MVCUSER> list=jdbcTemplate.query("select * from mvcuser",new RowMapper<MVCUSER>(){

			@Override
			public MVCUSER mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				return new MVCUSER(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4));
			}});
		return list;
	}

}
