package com.icss.springmvc_1201_helloworld.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
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
	public String login1(@Valid @ModelAttribute("e") Emp e,BindingResult br) throws Exception {
		//BindingResult 判断是否有错误
		if(br.hasErrors()){
			return "welcome";
		}
		return "success";
	}

}
