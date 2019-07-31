package dao;

import java.util.ArrayList;

import Vo.Emp;

public class EmpDao {
	public ArrayList<Emp> getEmpByDeptId(int deptId){
		ArrayList<Emp> eList = new ArrayList<Emp>();
		if(deptId==1){
			eList.add(new Emp(1,"tom"));
			eList.add(new Emp(2,"jack"));
		}
		if(deptId==2){
			eList.add(new Emp(3,"rose"));
			eList.add(new Emp(4,"jerry"));
		}
		return eList;
	}
}
