package test;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class M 
{
	public static void main(String[] args) 
	{
		Map<String,String> map = new HashMap<String,String>();
		map.put("1", "sss");
		map.put("2", "hello");
		map.put("1", "sss");
		map.put(null, " ds");
		map.put("", "ds");
		map.put("1",null);
//		for(int a:map)
//		{
//			System.out.println(a);
//		}
		
		Set<String> s = map.keySet();
		for(String a:s){
			System.out.println(map.get(a)+" "+a);
			
		}
		
//		Set<Map.Entry<String,String>> set = map.entrySet();
//		for(Map.Entry<String,String> se:set)
//		{
//			String k = se.getKey();
//			String v = se.getValue();
//			System.out.print(k+" "+v);
//			System.out.println();
//		}
//		System.out.println(map.get("2"));
//		
	}

}
