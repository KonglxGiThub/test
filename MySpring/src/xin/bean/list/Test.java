package xin.bean.list;

import java.util.Map;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("xin/bean/list/applicationContext.xml");
		Body b = (Body)ac.getBean("body");
		for(Girl g:b.getGiirlFriends()){
			System.out.println(g);
		}
		Map<String,Room> tm =b.getRoomMap();
		Set<String> set = tm.keySet();
		for (String key : set) {
			Room value = tm.get(key);
			System.out.println(value);

		}
	}

		
		
		
	}


