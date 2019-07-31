package com.icss.springmvc_1201_helloworld.controller;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.servlet.support.RequestContext;

import com.icss.springmvc_1201_helloworld.vo.Emp;

@Controller
@RequestMapping("/emp/")
public class LoginController{

	@RequestMapping("index.action")
	public ModelAndView index(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView("welcome");
		return mav;
	}

	@RequestMapping("login.action")
	 //* emp表示从表单传过来的值，不管多少个
	public String login1(HttpServletRequest arg0,Emp emp,Model model) throws Exception {
		//为model赋值
		model.addAttribute("emp", emp);
//		String date = "11112233";
//		SimpleDateFormat sd = new SimpleDateFormat("yyyy-mm-dd");
//		String n = sd.format(date);
	
		
		
		RequestContext rc = new RequestContext(arg0);
		String hello=rc.getMessage("hello",new String[]{emp.getName(),emp.getPass()});
		System.out.println(hello);
		//返回要访问的jsp的名字
		return "success";
	}

}
