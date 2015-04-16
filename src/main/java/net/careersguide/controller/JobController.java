package net.careersguide.controller;

import java.security.Principal;

import net.careersguide.entity.Job;
import net.careersguide.entity.User;
import net.careersguide.service.JobService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JobController {
	
	@Autowired
	private JobService jobService;
	@Autowired
	private UserService userService;
	
	@ModelAttribute("jobs")
	public Job userConstruct(){
		return new Job();
	}
	@RequestMapping("/jobform")
	public String showJobform(){
		return "jobform";
	}
	@RequestMapping(value="/jobform", method=RequestMethod.POST)
		public String postJobs(@ModelAttribute("jobs")Job jobs,Principal principal){
		String name=principal.getName();
		jobService.postJob(jobs,name);
		return "redirect:/jobform.html";
	}
	@RequestMapping("/posted-jobs")
	public String listPostedJobs(Model model, Principal principal){
		String name=principal.getName();
		User user =userService.userByName(name);
		model.addAttribute("postedjobs",jobService.jobsByUser(user));
		return "posted-jobs";
		
	}
	
}
