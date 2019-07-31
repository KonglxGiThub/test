package com.neusoft.system.tools;

public final class Tools 
{
	public static String encoding(String isocode)throws Exception
	{
		//1.��lyr�������ַ�ԭ��ISO-8859-1��ʽ���ֽ�����
	    byte arr[]=isocode.getBytes("ISO-8859-1");
	    //2.���ֽ�����,����GBK���뷽ʽ���»�ԭ���ַ�
	    return new String(arr,"GBK");
	}

}
