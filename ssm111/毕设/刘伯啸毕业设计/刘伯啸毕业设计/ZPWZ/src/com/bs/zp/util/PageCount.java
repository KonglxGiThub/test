package com.bs.zp.util;

import java.util.List;

import com.bs.zp.bean.Page;

public class PageCount
{
	static int num = 15;
	public Page count(List list,int now,String turn){
		Page p = new Page();
		if(list.size()/num==0){
			p.setPages(list.size()/num);
		}else{
			p.setPages(list.size()/num+1);
		}
		
		p.setCount(list.size());
		p.setNum(num);
		return null;
	}
	
	public Page countPage(int count){
		Page p = new Page();
		if(count>=num){
			if(count/num==0){
				p.setPages(count/num);
			}else{
				p.setPages(count/num+1);
			}
		}else{
			p.setPages(1);
		}
		
		p.setCount(count);
		return p;
	}
	
	
	public int countNum(int num,int base)
    {
		int countPage = num%base;
		if(countPage==0){
			num = num/base;
		}else{
			num = num/base+1;
		}
		return num;
    }
	//ÅÐ¶ÏÒ³Êý
	public static int countNow(int now){
		if(now>1){
			now = (now-1)*num;
		}else{
			now=0;
		}
		return now;
	}
	
	public static String Tosql(String sql,int now){
		now = countNow(now);
		sql = sql +" LIMIT "+now+","+num;
		return sql;
	}
}
