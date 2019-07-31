package jdbc.dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import jdbc.vo.Dept;

public class Test {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("jdbc/dao/applicationContext.xml");
		DeptDao dao = (DeptDao)ac.getBean("deptDao");
		Dept dept = new Dept();
		dao.selAllDept();
		//System.out.println(dao.selAllDept().size());
		//System.out.println(dao.selDept(dept).getDname());
//		if(dao.selDept(dept)!=null){
//			
//			System.out.println(" sel ok");
//		}
//		else{
//			System.out.println("sel false");
//		}
//		DeptExtendsDao dao = (DeptExtendsDao)ac.getBean("deptExtendsDao");
//		Dept dept = new Dept(22,"ofo","xffx");
//		dao.insertDept(dept);
	}
}
