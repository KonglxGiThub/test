package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping("/TestController")
	   public   String show(){
		 System.out.println("111111112211111111");  
		   return "";
	   }
}

