package net.careersguide.controller;


import java.security.Principal;
import java.util.List;

import net.careersguide.entity.Job;
import net.careersguide.entity.User;
import net.careersguide.service.JobService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashBoard {
 @Autowired
 private JobService jobService;
 @Autowired
 private UserService userService;
 
	@RequestMapping("/dashboard")
	public String showDashboard(Model model,Principal principal){
		User user=userService.userByName(principal.getName());
	List<Job>joblist=jobService.jobsByUser(user);
		model.addAttribute("totalJobs",joblist.size() );
		model.addAttribute("postedjobs",joblist);
		return "dashboard";
	}
}
