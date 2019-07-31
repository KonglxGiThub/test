package com.icss.springmvc_1201_helloworld.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@RequestMapping("getEmps.action")
	@ResponseBody
	public Map<String,Object> getEmps(HttpServletRequest request){
		System.out.println(request.getParameter("clazzid"));
		Map<String,Object> map = new HashMap<String, Object>();
		List<Emp> elist = new ArrayList<Emp>();
		elist.add(new Emp("xx","oo"));
		elist.add(new Emp("1","2"));
		map.put("list", elist);
		return map;
	}
	
	@RequestMapping("login.action")
	public String login(@ModelAttribute("e") Emp e) throws Exception {

		//返回要访问的jsp的名字
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
