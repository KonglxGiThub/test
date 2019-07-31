package hrms.dao.dept;

import java.util.List;

import hrms.vo.DepartmentsVo;

public interface IDeptDao {
	public List<DepartmentsVo> listDept();
	public boolean upadteDept(DepartmentsVo dept);
	public boolean deleteDept(DepartmentsVo dept);
	public boolean insertDept(DepartmentsVo dept);
}
