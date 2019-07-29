package meeting.xin.service;

import java.util.ArrayList;

import meeting.xin.dao.DeptDao;
import meeting.xin.vo.Dept;
import meeting.xin.vo.Room;

public class DeptService {

	/**
	 * 人员管理里的部门管理的 删除
	 * */
	public boolean DeleteDept(int did){
		DeptDao dao =new DeptDao();
		return dao.DeleteDept(did);
	}
	
	/**
	 * 人员管理里的部门管理的所有部门
	 * */
	public ArrayList<Dept> showAllDept(){
		DeptDao dao =new DeptDao();
		return dao.showAllDept();
	}
	/**
	 * 人员管理里的部门管理的 添加部门
	 * */
	public boolean addDept(String addName){
		DeptDao adao =new DeptDao();
		return adao.addDept(addName);
	}
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//
//	}

}
