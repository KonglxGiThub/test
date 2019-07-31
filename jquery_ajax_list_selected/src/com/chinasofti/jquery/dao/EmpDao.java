package com.chinasofti.jquery.dao;

import java.util.ArrayList;
import java.util.List;

import com.chinasofti.jquery.vo.Emp;

public class EmpDao {
//根据部门号获得对应的人员
	public List<Emp> getEmpsByDeptId(int deptId){
		//该处连接数据库
		List<Emp> empList = new ArrayList<Emp>();
		if(deptId==1){
			empList.add(new Emp(1,"tom"));
			empList.add(new Emp(2,"jack"));
			empList.add(new Emp(3,"rose"));
		}
		else{
			empList.add(new Emp(4,"xxx"));
			empList.add(new Emp(5,"ooo"));
			empList.add(new Emp(6,"zimo"));
		}
		return empList;
	}
}
