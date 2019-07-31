package com.icss.springmvc_1201_helloworld.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.icss.springmvc_1201_helloworld.vo.Emp;
@Controller
@RequestMapping("/emp/")
public class LoginController{

	@RequestMapping("index.action")
	public ModelAndView index(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView("welcome");
		return mav;
	}
	
/*	@RequestMapping("login.action")
	public ModelAndView login1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//获得前台传入的数据
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		//定义ModelAndView
		ModelAndView mav = new ModelAndView();
		//为ModelAndView赋页面的名字
		mav.setViewName("success");
		//为ModelAndView赋属性
		mav.addObject("xxx",name);
		mav.addObject("ooo",pass);
		return mav;
	}*/
	//此处返回值String表示viewName
	/*@RequestMapping("login.action")
	public String login1(HttpServletRequest request, HttpServletResponse response,ModelMap model) throws Exception {
		//获得前台传入的数据
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		//为model赋值
		model.addAttribute("xxx", name);
		model.addAttribute("ooo", pass);
		//返回要访问的jsp的名字
		return "success";
	}*/
	
	/*@RequestMapping("login.action")
	 *name和pass表示从表单传过来的name和pass值
	public String login1(String name,String pass,Model model) throws Exception {
		//为model赋值
		model.addAttribute("xxx", name);
		model.addAttribute("ooo", pass);
		//返回要访问的jsp的名字
		return "success";
	}*/
	/*@RequestMapping("login.action")
	 * emp表示从表单传过来的值，不管多少个
	public String login1(Emp emp,Model model) throws Exception {
		//为model赋值
		model.addAttribute("emp", emp);
	
		//返回要访问的jsp的名字
		return "success";
	}*/
	@RequestMapping("login.action")
	//默认的是emp类名的首字母小写，否则自定义需要@ModelAttribute("e")
	public String login(@ModelAttribute("e") Emp e) throws Exception {

		//返回要访问的jsp的名字redirect
		return "forward:login1.action";
	}
	@RequestMapping("login1.action")
	public String login1(Model model) throws Exception {
		List<String> eList = new ArrayList<String>();
		eList.add("香蕉");
		eList.add("苹果");
		eList.add("大鸭梨");
		model.addAttribute("eee", eList);
		//返回要访问的jsp的名字
		return "success";
	}
	

}
