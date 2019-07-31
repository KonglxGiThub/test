package springmvcwork.xin.dao;

import org.springframework.jdbc.core.JdbcTemplate;

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

}
