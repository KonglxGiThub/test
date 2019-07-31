package test;

import java.util.*;
import com.neusoft.services.LyBookServices;

public class LyBookServicesTest
{
	public static void main(String[] args) 
	{
		try 
		{
			LyBookServicesTest.queryTest();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	private static void queryTest()throws Exception
	{
		LyBookServices services=new LyBookServices();
		List<Map> rows=services.query();
	    System.out.println(rows);
	    
	    for(Map ins:rows)
	    {
	    	System.out.println(ins.get("LYR"));   //${ins.LYR}
	    	System.out.println(ins);
	    }
	    
	}

}








