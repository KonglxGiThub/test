package com.etc.admin.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class IndexController {

	///index/{path}里的path相当于login.jsp里的inde.action的index
	//String path 里的path返回的path是index，也就是index页面，需要@PathVariable才能生效，动态参数
  
	/* 只在登录用{path}
    * 流程：
    * 先找admin，在找index找到后就把index.action赋给path，前台的path和这里的path无关，前台的path只是项目名
    * 
    * */
	@RequestMapping("/index/{path}")
	public String index(@PathVariable String path) {
		
		return path;
	}
	
	
}












