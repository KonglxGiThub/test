package com.cjk.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cjk.bean.User;
import com.cjk.service.impl.UserServiceImpl;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    
    @Autowired
    private UserServiceImpl userServiceImpl;
    
    @RequestMapping(value = "/test")
    public String Index(HttpServletRequest request, Model model){
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = userServiceImpl.getUserById(userId);
        model.addAttribute("user",user);
         return "User";
    }

}