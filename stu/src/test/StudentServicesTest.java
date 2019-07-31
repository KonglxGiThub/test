package test;

import java.util.List;
import java.util.Map;

import com.neusoft.services.StudentServices;

public class StudentServicesTest 
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		try 
		{
			StudentServicesTest
			  //.addStudentTest();
			  //.queryTest();
			  .deleteTest();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	
	private static void deleteTest()throws Exception
	{
		String parsList[]={"5"/**,"ABCDEF"*/,"61"};
		StudentServices services=new StudentServices();
		String msg=services.delete(parsList)?"删除成功!":"删除失败!";
		System.out.println(msg);
		
		
	} 
	
	private static void queryTest()throws Exception
	{
		StudentServices services=new StudentServices();
		List<Map> rows=services.query();
		System.out.println(rows);
	}
   
	private static void addStudentTest()throws Exception
	{
		//1.组织数据
		String val[]={"王兴刚","S0001","1979-12-26","1","11","11",null};
		//2.实例化Services
		StudentServices services=new StudentServices();
		//3.测试Services方法
		boolean tag=services.addStudent(val);
		//4.输出测试结果
		System.out.println(tag);
	}
}
