package com.bs.zp.util;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import java.util.Random;

public class Validate
{

	/**
	 * 是否为数字和英文验证
	 */
	public int getIntAndChar(String str)
	{
		char c;
		int i;
		for (i = 0; i < str.length(); i++) {
			c = str.charAt(i);
			if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))) {
				break;
			}
		}// 判断字符是否在某个区�?
		if (i < str.length()) {
			return -1;
		}
		else {
			return 0;
		}
	}

	/**
	 * 是否为整数验�?
	 */
	public int getInt(String str)
	{
		char c;
		int i;
		for (i = 0; i < str.length(); i++) {
			c = str.charAt(i);
			if (!(c >= '0' && c <= '9')) {
				break;
			}
		}// 判断字符是否在某个区�?
		if (i < str.length()) {
			return -1;
		}
		else {
			return 0;
		}
	}

	/**
	 * 是否为非法字符验�?
	 */
	public boolean getLawlessChar(String str)
	{
		boolean flag = false;
		char c;
		for (int i = 0; i < str.length(); i++) {
			c = str.charAt(i);
			switch (c) {
				case '<':
					flag = true;
					break;
				case '>':
					flag = true;
					break;
				case '"':
					flag = true;
					break;
				case '&':
					flag = true;
					break;
				case ' ':
					flag = true;
					break;
			}
		}
		return flag;
	}

	/**
	 * 中文转换 将gb2312编码转换成unicode编码
	 */
	public String getUnicode(String str)
	{
		if (str != null) {
			try {
				return new String(str.getBytes("iso8859_1"), "gb2312");
			}
			catch (UnsupportedEncodingException e) {
				// TODO 自动生成 catch �?
				e.printStackTrace();
				return str;
			}
		}
		else {
			return null;
		}
	}

	/**
	 * 中文转换 将unicode编码转换成gb2312编码
	 */
	public String getGb2312(String str)
	{
		if (str != null) {
			try {
				return new String(str.getBytes("gb2312"), "iso8859_1");
			}
			catch (UnsupportedEncodingException e) {
				// TODO 自动生成 catch �?
				e.printStackTrace();
				return str;
			}
		}
		else {
			return null;
		}
	}

	/**
	 * 格式化日�? �?-�?-�? 小时�?0-23�?:分钟:�?
	 */
	public String getSystemDate()
	{
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		return df.format(date);
	}

	/**
	 * 四舍五入
	 */
	public float getRround(float f)
	{
		int tem = (int) (f * 100 + 0.5);
		float ff = ((float) tem / 100);
		return ff;
	}

	/**
	 * 判空处理
	 */
	public static final boolean isEmptyOrNull(String str)
	{
		boolean rs = true;

		// Null,""的情�?
		if (str == null) {
			// Null的情况（包含数字�?
			rs = false;
		}
		else if (str == "") {
			// String的情�?
			rs = false;
		}

		return rs;
	}

	public static final boolean isEmptyOrNull(Object value)
	{
		boolean rs = false;

		// Null,""的情�?
		if (value == null) {
			rs = true;
		}
		else if (value instanceof String || value instanceof StringBuffer) {
			rs = value.toString().length() == 0;
		}
		else if (value instanceof Map) {
			rs = ((Map<?, ?>) value).isEmpty();
		}
		else if (value instanceof Collection) {
			rs = ((Collection<?>) value).isEmpty();
		}
		else if (value.getClass().isArray()) {
			rs = Array.getLength(value) == 0;
		}

		return rs;
	}
	//生成随机�?
	public static String getRandomString(int length) { //length表示生成字符串的长度
	    String base = "0123456789";   
	    Random random = new Random();   
	    StringBuffer sb = new StringBuffer();   
	    for (int i = 0; i < length; i++) {   
	        int number = random.nextInt(base.length());   
	        sb.append(base.charAt(number));   
	    }   
	    return sb.toString();   
	 }   
	
	public String getTime(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
		return df.format(new Date());
	}
	
	public String getDay(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//�������ڸ�ʽ
		return df.format(new Date());
	}
}
