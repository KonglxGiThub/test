package transaction.dao;

import org.springframework.jdbc.core.JdbcTemplate;

public class EmpsDao {
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public boolean addEmps(int id ,String name,int age,String loc){
		int f=jdbcTemplate.update("insert into MVCUSER values(?,?,?,?)",new Object[]{id,name,age,loc});
		if(f>0){
			return true;
		}
		return false;
	}
}
