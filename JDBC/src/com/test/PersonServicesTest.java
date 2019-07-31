package com.test;

import com.services.PersonServices;

public class PersonServicesTest {

	public static void main(String[] args) {
		
		try {
			PersonServicesTest p = new PersonServicesTest();
			p.addPersonTest3();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("网络故障！！！");
		}
	}
	private static void addPersonTest3()throws Exception
	{
		PersonServices services=new PersonServices();
		String val[]={ "老王头", "男", "满族", "1", "500"};
		services.addPerson(val);
		
	}
	
	private static void addPersonTest2()throws Exception
	{
		PersonServices services=new PersonServices();
		services.addPerson(3, "王老头", "男", "满族", "1", 500);
	}
	
	
	private static void addPersonTest1()throws Exception
	{
		PersonServices services=new PersonServices();
		services.addPerson();
	}
	private static void delTst()throws Exception
	{
		PersonServices services=new PersonServices();
		String msg=services.del(41)?"删除成功!":"删除失败!";
		System.out.println(msg);
	}
	
	private static void modifyTest()throws Exception
	{
		String val[]={"法兰西","2","10000","250"};
		PersonServices services=new PersonServices();
		String msg=services.modify(val)?"修改成功":"修改失败!";
		System.out.println(msg);
	}
	
	private static void addPersonTest()throws Exception
	{
		//开发顺序:先准备数据,再实例化services,最后调用方法
		String val[]={"拿破仑","男","满族","1","500"};
		PersonServices services=new PersonServices();
//		boolean tag=services.addPerson(val);
//		String msg="添加失败!";
//		if(tag)
//		{
//		   msg="添加成功!";	
//		}
		String msg=services.addPerson(val)?"添加成功!":"添加失败!";
		System.out.println(msg);
	}

}
