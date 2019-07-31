package hrms.service.job;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hrms.dao.job.IJobDao;
import hrms.vo.JobVo;
@Service
public class JobServiceImpl implements IJobService {
	@Resource(name="jobDaoImpl")
	private IJobDao dao;
	
	public IJobDao getDao() {
		return dao;
	}

	public void setDao(IJobDao dao) {
		this.dao = dao;
	}

	@Override
	public List<JobVo> listJob() {
		// TODO Auto-generated method stub
		return dao.listJob();
	}

	@Override
	public boolean upadteJob(JobVo job) {
		// TODO Auto-generated method stub
		return dao.upadteJob(job);
	}

	@Override
	public boolean deleteJob(JobVo job) {
		// TODO Auto-generated method stub
		return dao.deleteJob(job);
	}

	@Override
	public boolean insertJob(JobVo job) {
		// TODO Auto-generated method stub
		return dao.insertJob(job);
	}

}
