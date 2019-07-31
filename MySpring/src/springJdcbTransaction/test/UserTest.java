package springJdcbTransaction.test;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import springJdcbTransaction.controller.UserController;
import springJdcbTransaction.vo.MVCUSER;

public class UserTest {
  
	
	Scanner sc = new Scanner(System.in);
	ApplicationContext ac = new ClassPathXmlApplicationContext("springJdcbTransaction/test/applicationContext.xml");
	UserController c=(UserController)ac.getBean("userController");
	public void add(){


		System.out.println("输入id");
		int id = sc.nextInt();
		System.out.println("输入姓名");
		String name = sc.next();
		System.out.println("输入年龄");
		int age = sc.nextInt();
		System.out.println("输入地址");
		String location = sc.next();
		MVCUSER u = new MVCUSER(id,name,age,location);
		c.addUser(u);
		
	}
	public void del(){


		System.out.println("输入id");
		int id = sc.nextInt();
		System.out.println("输入姓名");
		String name = sc.next();
		System.out.println("输入年龄");
		int age = sc.nextInt();
		System.out.println("输入地址");
		String location = sc.next();
		MVCUSER u = new MVCUSER(id,name,age,location);
		c.deleteUser(u);
		
	}
	public void update(){


		System.out.println("输入id");
		int id = sc.nextInt();
		System.out.println("输入姓名");
		String name = sc.next();
		System.out.println("输入年龄");
		int age = sc.nextInt();
		System.out.println("输入地址");
		String location = sc.next();
		MVCUSER u = new MVCUSER(id,name,age,location);
		c.updateUser(u);
		
	}
	public void sel(){
		System.out.println("输入id");
		int id = sc.nextInt();
		System.out.println("输入姓名");
		String name = sc.next();
		System.out.println("输入年龄");
		int age = sc.nextInt();
		System.out.println("输入地址");
		String location = sc.next();
		MVCUSER u = new MVCUSER(id,name,age,location);
		c.findUserById(u);
		
	}
	public void selAll(){

		c.showAllUser();
		
	}

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//ApplicationContext ac = new ClassPathXmlApplicationContext("springJdcbTransaction/test/applicationContext.xml");
		//UserController userController=(UserController)ac.getBean("userController");
		//boolean f = userController.addUser(new MVCUSER(111,"aaa",55,"bb"));
		//boolean f = userController.deleteUser(new MVCUSER(111,"aaa",55,"bb"));
		//boolean f = userController.updateUser(new MVCUSER(55,"coooooc",15,"cooooooc"));
		//System.out.println(userController.findUserById(new MVCUSER(55,"coooooc",15,"cooooooc")).getName());		
		//System.out.println(userController.showAllUser().size());
		System.out.println("欢迎来到员工管理系统");
		System.out.println("1，添加员工");
		System.out.println("2，删除员工");
		System.out.println("3，修改员工");
		System.out.println("4，根据id查询员工");
		System.out.println("5，查询全部");
		System.out.println("6，退出");
		Scanner sc = new Scanner(System.in);
		//System.out.println("是否进入y/n");
		String name = "y";
		while("y".equals(name)){
			System.out.println("请输入操作序号");
			int num = sc.nextInt();
			switch(num){
			case 1:
				System.out.println("1，添加员工");
				new UserTest().add();
				break;
			case 2:
				System.out.println("2，删除员工");
				new UserTest().del();
				break;
			case 3:
				System.out.println("3，修改员工");
				new UserTest().update();
				break;
			case 4:
				System.out.println("4，根据id查询员工");
				new UserTest().sel();
				break;
			case 5:
				System.out.println("5，查询全部");
				new UserTest().selAll();
				break;
			case 6:
				System.out.println("6，退出");
				break;
			default:
				name="dd";
				System.out.println("hahahaha");
	
			}
			if(num==6){
				name="n";	
			}else{
			System.out.println("是否继续y/n");
			name = sc.next();	
			}
			
		}
		System.out.println("已退出");
		

	}

}
