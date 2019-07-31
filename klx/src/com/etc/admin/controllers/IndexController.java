package com.etc.admin.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class IndexController {
	@RequestMapping("/index/{path}")
	public String index(@PathVariable String path) {

		return path;
	}
}
