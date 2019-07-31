package hrms.controller.dept;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hrms.service.dept.IDeptService;
import hrms.vo.DepartmentsVo;
@Controller
@RequestMapping("/admin/")
public class DeptController {
	@Resource(name="deptServiceImpl")
	private IDeptService service;

	public IDeptService getService() {
		return service;
	}
	public void setService(IDeptService service) {
		this.service = service;
	}
/*========================AAAAAAAA===================================================*/
	@RequestMapping("AddDeptSubmit.action")
	public String addDeptSubmit(DepartmentsVo departmentsVo ){
		boolean f = service.insertDept(departmentsVo);
//		System.out.println(f);
		if(f){
			return "forward:showDept.action";
		}
		return "forward:AddDept.action";
	}
	@RequestMapping("AddDept.action")
	public String addDept(){
		return "AddDept";
	}
	
	@RequestMapping("updateDeptSubmit.action")
	public String updateDeptSubmit(DepartmentsVo departmentsVo,Model m){
		System.out.println(departmentsVo.getDepartmentId()+departmentsVo.getDepartmentName());
		boolean f = service.upadteDept(departmentsVo);
		if(f){
			m.addAttribute("msg", "updateDept is success");
			return "forward:showDept.action";
		}
		m.addAttribute("msg", "updateDept is false");
		return "forward:showDept.action";
	}
	
	@RequestMapping("updateDept.action")
	public String updateDape(String did,String dname,String dloc,Model m){
		m.addAttribute("did",did);
		m.addAttribute("dname",dname);
		m.addAttribute("dloc",dloc);
		return "updateDept";
	}
	
	@RequestMapping("delDept.action")
	public String delDeptById(String did,Model model){
		boolean f = service.deleteDept(new DepartmentsVo(Integer.parseInt(did)));
		if(f){
			
			return "forward:showDept.action";
		}
//		model.addAttribute("msg", "delete dept is false");
		return "forward:showDept.action";
	}

	@RequestMapping("showDept.action")
	public String showAllDept(Model model){
		List<DepartmentsVo> listDept = service.listDept();
		model.addAttribute("listDept",listDept);
		return "deptShowAll";
	}
	
}
