package hrms.service.job;

import java.util.List;

import hrms.vo.DepartmentsVo;
import hrms.vo.JobVo;

public interface IJobService {
	public List<JobVo> listJob();
	public boolean upadteJob(JobVo job);
	public boolean deleteJob(JobVo job);
	public boolean insertJob(JobVo job);
}
