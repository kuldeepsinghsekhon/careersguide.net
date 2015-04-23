package net.careersguide.controller;

import net.careersguide.service.JobService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@Autowired
	private UserService userService;
	@Autowired
	private JobService jobservice;
	@RequestMapping("/index")
	public String index(Model model){
		model.addAttribute("jobs",jobservice.getJobs());
		return "index";
	}
	@RequestMapping("/contactus")
	public String showContactForm(){
		return "contactus";
	}
	
}
