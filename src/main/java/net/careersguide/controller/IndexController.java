package net.careersguide.controller;

import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@Autowired
	private UserService userService;
	@RequestMapping("/index")
	public String index(){
		
		return "index";
	}
	
}
