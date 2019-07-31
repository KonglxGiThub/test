package com.icss.springmvc_1201_helloworld.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class StringToDateConverter implements Converter<String, Date> {
	private String pa;
	
	public String getPa() {
		return pa;
	}

	public void setPa(String pa) {
		this.pa = pa;
	}

	@Override
	public Date convert(String arg0) {
		// TODO Auto-generated method stub
		SimpleDateFormat sd = new SimpleDateFormat(pa);
		Date date =null;
		try {
			date = sd.parse(arg0);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}

}
