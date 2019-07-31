package com.etc.util.converter;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
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
		//System.out.println(str);
		return str;
	}

	@Override
	public Date parse(String arg0, Locale arg1) {
		// TODO Auto-generated method stub
		SimpleDateFormat sd = new SimpleDateFormat(pa);
		Date date = null;
		try {
			date = sd.parse(arg0);
			//System.out.println(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}

}
