/*package com.icss.springmvcEX;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class MyExceptionResolver implements HandlerExceptionResolver{
	//必须要有第一个，否则不好用，就是HandlerExceptionResolver必须依靠自定义的异常，HandlerExceptionResolver是异常处理器，不是异常
	@Override
	public ModelAndView resolveException(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
			Exception arg3) {
		// TODO Auto-generated method stub
		Map<String,Exception> map=new HashMap<String,Exception>();
		map.put("ex",arg3);
		if(arg3 instanceof MyException){
			return new ModelAndView("my-error",map);
		}else{
			return new ModelAndView("error",map);
		}
		
	}

}
*/