package hrms.service.dept;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hrms.dao.dept.IDeptDao;
import hrms.vo.DepartmentsVo;
@Service
public class DeptServiceImpl implements IDeptService {
	@Resource(name="deptDaoImpl")
	private IDeptDao dao;
	
	public IDeptDao getDao() {
		return dao;
	}

	public void setDao(IDeptDao dao) {
		this.dao = dao;
	}

	@Override
	public List<DepartmentsVo> listDept() {
		// TODO Auto-generated method stub
		return dao.listDept();
	}

	@Override
	public boolean upadteDept(DepartmentsVo dept) {
		// TODO Auto-generated method stub
		return dao.upadteDept(dept);
	}

	@Override
	public boolean deleteDept(DepartmentsVo dept) {
		// TODO Auto-generated method stub
		return dao.deleteDept(dept);
	}

	@Override
	public boolean insertDept(DepartmentsVo dept) {
		// TODO Auto-generated method stub
		return dao.insertDept(dept);
	}

}
