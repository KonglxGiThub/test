package com.icss.springmvc_1201_helloworld.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.jasper.compiler.SmapGenerator;
import org.springframework.format.Formatter;

public class StringToDateFormatter implements Formatter<Date> {
	private String pa;
	
	public String getPa() {
		return pa;
	}

	public void setPa(String pa) {
		this.pa = pa;
	}

	@Override
	public String print(Date arg0, Locale arg1) {
		// TODO Auto-generated method stub
		SimpleDateFormat sd = new SimpleDateFormat(pa);
		String str = sd.format(arg0);
		return str;
	}

	@Override
	public Date parse(String arg0, Locale arg1) {
		// TODO Auto-generated method stub
		SimpleDateFormat sd = new SimpleDateFormat(pa);
		Date date = null;
		try {
			date = sd.parse(arg0);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}

}
