package meeting.xin.service;

import java.util.ArrayList;

import meeting.xin.dao.EmpDao;
import meeting.xin.vo.EMP;

public class AdminService {
//	public static void main(String[] args) {
//	System.out.println(new AdminService().allPageEmp());
//
//}
	/**
	 * 人员管理搜索员工，分页查出所有员工记录
	 * */
	public int allPageEmp(){
		EmpDao dao =new EmpDao();
		return dao.allPageEmp();
	}
	/**
	 * 人员管理搜索员工，分页
	 * */
	public ArrayList<EMP> pageEmp(int page){
		EmpDao dao =new EmpDao();
		return dao.pageEmp(page);
	}
	/**
	 * 预定的选择参会人员，根据部门id搜索员工
	 * */
	public ArrayList<EMP> searchEmpByDid(int did){
		EmpDao dao =new EmpDao();
		return dao.searchEmpByDid(did);
	}
	/**
	 * 根据用户的登录名查id*/
	public EMP elnameSearchById(String elname){
		EmpDao dao =new EmpDao();
		return dao.elnameSearchById(elname);
		}
	/**
	 * 根据用户的登录名判断用户的用户名是否重复，并查id*/
	public boolean elnameCheck(String elname){
		EmpDao dao =new EmpDao();
		return dao.elnameCheck(elname);
	}
		/**
	
	 * 人员管理，根据人员id删除，参数，id
	 * 
	 * */
	public boolean delEmpById(int eid){
		EmpDao dao =new EmpDao();
		return dao.delEmpById(eid);
	}
	/**
	 * 人员管理，注册审批，修改状态，参数，id和状态改为通过1
	 * 状态0待审批1通过2拒绝
	 * */
	public boolean updateStatusEmp(int eid,int estatus){
		EmpDao dao =new EmpDao();
		return dao.updateStatusEmp(eid,estatus);
	}
	/**
	 * 人员管理下的搜索员工的显示全部并且待审核
	 * */
	public ArrayList<EMP> checkingEmp(){
		EmpDao dao =new EmpDao();
		return dao.checkingEmp();
	}
		
	/**
	
	 * 用户登录，返回一个emp，在返回一个int状态0待审批1通过2拒绝
	 * */
	public int login(EMP emp){
		EmpDao dao =new EmpDao();
		EMP e = dao.login(emp);
		if(e!=null){
			//System.out.println(e.getEstatus());
			return e.getEstatus();
		}
		else{
			return -1;
			}
	}
	
	/**
	 * 人员管理下的搜索员工，根据姓名，账户名，状态名查询
	 * */
	public ArrayList<EMP> searchEmp(String ename,String elname,String estatus){
		EmpDao dao =new EmpDao();
		return dao.searchEmp(ename, elname, Integer.parseInt(estatus));
	}
	public static void main(String[] args) {
		System.out.println(new AdminService().searchEmp("lufei", "lufei", "1").size());
	}
	
	/**
	 * 人员管理下的搜索员工，根据姓名，账户名，状态名查询
	 * */
	public ArrayList<EMP> showEmp(){
		EmpDao dao =new EmpDao();
		return dao.searchEmp();
	}
	/*
	 * 注册用户，部门存在
	 * 
	 * */
	public boolean register(EMP emp){
		EmpDao dao = new EmpDao();
		return dao.register(emp);
	}


}
