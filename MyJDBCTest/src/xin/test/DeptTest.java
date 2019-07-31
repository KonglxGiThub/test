package xin.test;

import java.util.List;

import xin.model.DeptTable;
import xin.services.DeptTableServices;

public class DeptTest {

	public static void main(String[] args) {
		DeptTableServices dept = new DeptTableServices();
		//查询方法
////		dept.showAllDept();
//		List<DeptTable>list = dept.showAllDept1();
//		for(DeptTable d : list){
//			System.out.println(d);
//		}
////		for(DeptTable d : list){
////			System.out.println(d.getDeptNo()+d.getdName()+d.getCity());
////		}

//       //添加方法
//		boolean falg = dept.addDept(new DeptTable("开发部","大连"));
//		if (falg){
//			System.out.println(" ADD OK");
//		}
//		else{
//			System.out.println(" ADD FALSE");
//		}
//	}

	//根据id删除方法
//	boolean dfalg = dept.deleteDept(1);
//	if(dfalg){
//		System.out.println("DELETE OK");
//	}
//	else{
//		System.out.println("DELETE FALSE");
//	}
		//修改方法
//		boolean falg = dept.updateDept(new DeptTable(10,"客户","沈阳"));
//		if(falg){
//			System.out.println("update ok");
//		}else{
//			System.out.println("update fasle");
//		}
		
		//动态
		String[] val={"hahaha","xixixi"};
		boolean f = dept.addDept(val);
		if (f){
		System.out.println(" ADD OK");
	}
	else{
		System.out.println(" ADD FALSE");
	}
	}	
}
