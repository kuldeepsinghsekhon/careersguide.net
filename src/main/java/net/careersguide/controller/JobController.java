package net.careersguide.controller;

import java.security.Principal;

import net.careersguide.entity.Job;
import net.careersguide.service.JobService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JobController {
	
	@Autowired
	private JobService jobService;
	
	
	@ModelAttribute("jobs")
	public Job userConstruct(){
		return new Job();
	}
	@RequestMapping("/jobform")
	public String showJobform(){
		return "jobform";
	}
	@RequestMapping(value="/jobform", method=RequestMethod.POST)
		public String postJobs(@ModelAttribute("jobs")Job jobs){
		jobService.postJob(jobs);
		return "redirect:/jobform.html";
	}
	
	
}
