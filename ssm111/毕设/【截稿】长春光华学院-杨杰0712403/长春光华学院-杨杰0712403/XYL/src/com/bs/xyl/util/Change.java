package com.bs.xyl.util;

public class Change
{

	public static String getMethodName(String fieldName)
	{
		return "set" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
	}
}
