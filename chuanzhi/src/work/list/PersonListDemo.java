package work.list;

import java.util.ArrayList;
import java.util.Scanner;

public class PersonListDemo {

	public static void main(String[] args) {
		//集合实现名片夹
		ArrayList<Person> personList = new ArrayList<Person>();
		//加入测试数据，假数据
		personList.add(new Person(4,"tom","马栏子"));
		personList.add(new Person(5,"jack","山东路"));
		personList.add(new Person(6,"rose","太原街"));
		Scanner scan = new Scanner(System.in);
		//用户的继续选择
		String in ="y";
		// 用户的选择
		int input = 0;
		while (in.equals("y")) {
			System.out.println("1显示全部");
			System.out.println("2添加名片");
			System.out.println("3删除名片");
			System.out.println("4修改名片");
			System.out.println("5查询名片");
			System.out.println("6退出系统");
			System.out.println("请输入您要的操作");
			input = scan.nextInt();
			switch(input){
			case 1:
				System.out.println("显示全部");
				for(Person p:personList){
					System.out.println("id："+p.getId()+",名字："+p.getName()+",地址："+p.getAddress());
				}
				break;
			case 2:
				System.out.println("添加名片");
				Person person = new Person();
				System.out.println("请输入id,名字，地址");
				int id = scan.nextInt();
				String name = scan.next();
				String address = scan.next();
				person.setId(id);
				person.setName(name);
				person.setAddress(address);
				//list添加人员
				personList.add(person);
				break;
			case 3:
				System.out.println("请输入要删除的名片id");
				int deleteId = scan.nextInt();
				boolean flag = false;
				for(Person p:personList){
					//找到person
					if(p.getId()==deleteId){
						//移除该元素
						personList.remove(p);
						System.out.println("删除成功");
						flag = true;
						break;
					}
				}
				if(flag == false){
					System.out.println("没有该id");
				}
				break;
			case 4:
				System.out.println("请输入要修改的名片id");
				int updateId=scan.nextInt();
				boolean flagUpdate = false;
				for(Person p:personList){
					//找到person
					if(p.getId()==updateId){
						System.out.println("请输入名字和地址");
						String nameUpdate = scan.next();
						String addUpdate = scan.next();
						p.setAddress(addUpdate);
						p.setName(nameUpdate);
						System.out.println("修改成功");
						flagUpdate = true;
					}
				}
				if(flagUpdate == false){
					System.out.println("没有该id");
				}
				break;
			case 5:
				System.out.println("请输入要查询的名片id");
				int findId=scan.nextInt();
				boolean flagFind = false;
				for(Person p:personList){
					//找到person
					if(p.getId()==findId){
						System.out.println("查询成功");
						System.out.println(p.getId()+p.getName()+p.getAddress());
						flagFind = true;
					}
				}
				if(flagFind == false){
					System.out.println("没有该id");
				}
				break;
			case 6:
				break;
			default:
				System.out.println("输入有误");
			}
			System.out.println("是否继续（y/n）");
			in = scan.next();
		}
	}

}
