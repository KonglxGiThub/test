package jquery.dao;

import java.util.ArrayList;

import jquery.vo.Emp;

public class EmpDao {
	//根据部门号查询对应的人员
	public ArrayList<Emp> getEmpListByDid(int did){
		ArrayList<Emp> emplist = new ArrayList<Emp>();
		if(did==1){
			emplist.add(new Emp(1,"tom"));
			emplist.add(new Emp(2,"jack"));
			emplist.add(new Emp(3,"rose"));
		}
		else{
			emplist.add(new Emp(4,"tom114"));
			emplist.add(new Emp(5,"jack115"));
			emplist.add(new Emp(6,"rose116"));
		}
		return emplist;
	} 
}
