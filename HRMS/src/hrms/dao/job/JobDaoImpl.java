package hrms.dao.job;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import hrms.vo.JobVo;
@Repository
public class JobDaoImpl implements IJobDao {
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<JobVo> listJob() {
		// TODO Auto-generated method stub
		List<JobVo> list = jdbcTemplate.query("select * from jobs",new RowMapper<JobVo>(){

			@Override
			public JobVo mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				return new JobVo(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getInt(4));
			}});
		return list;
	}

	@Override
	public boolean upadteJob(JobVo job) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteJob(JobVo job) {
		// TODO Auto-generated method stub
		 int rs = 0 ;
		 rs = jdbcTemplate.update("DELETE FROM jobs WHERE job_id = ?",new Object[]{job.getJobid()});
		if(rs>0){
			return true;
		}
		 return false;
	}

	@Override
	public boolean insertJob(JobVo job) {
		// TODO Auto-generated method stub
		 int rs = 0 ;
		 rs = jdbcTemplate.update("INSERT INTO jobs t VALUES(?,?,?,?)",new Object[]{job.getJobid(),job.getJobtitle(),
				 job.getMinsalary(),job.getMaxsalary()});
		if(rs>0){
			return true;
		}
		 return false;
	}

}

