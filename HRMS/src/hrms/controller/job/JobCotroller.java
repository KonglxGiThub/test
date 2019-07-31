package hrms.controller.job;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hrms.service.job.IJobService;
import hrms.vo.JobVo;

@Controller
@RequestMapping("/admin/")
public class JobCotroller {
	@Resource(name="jobServiceImpl")
	private IJobService service;

	public IJobService getService() {
		return service;
	}

	public void setService(IJobService service) {
		this.service = service;
	}
	/*==============================================================================*/
	@RequestMapping("AddJobsSubmit.action")
	public String addJobSubmit(JobVo job){
		
		boolean f = service.insertJob(job);
		if(f){
			return"forward:JobsViewSubmit.action";
		}
		return "forward:JobsViewSubmit.action";
	}
	@RequestMapping("AddJobs.action")
	public String addJob(){
		return "addJob";
	}

	
	@RequestMapping("JobsViewSubmit.action")
	public String jobShowAllSubmit(Model model){
		List<JobVo> list = service.listJob();
		model.addAttribute("list",list);
		return "jobShowAll";
	}
	@RequestMapping("delete.action")
	public String jobDelete(String jid,Model model){
		boolean f = service.deleteJob(new JobVo(jid));
		if(f){
			return"forward:JobsViewSubmit.action";
		}
		return "forward:JobsViewSubmit.action";
	}
	
}
