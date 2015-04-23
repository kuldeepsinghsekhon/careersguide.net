package net.careersguide.controller;

import java.security.Principal;

import net.careersguide.entity.Job;
import net.careersguide.entity.Search;
import net.careersguide.entity.User;
import net.careersguide.service.JobService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	@RequestMapping("/jobdetail/{id}")
	public String showJobDetail(Model model,@PathVariable int id){
		model.addAttribute("jobdetail",jobService.findOneJob(id));
		return "jobdetail";
		
	}
	@RequestMapping("/jobs")
	public String jobSearch(Model model){
		model.addAttribute("jobs",jobService.getJobs());
		return "jobs";
	}
	@ModelAttribute("search")
	public Search createSearchForm(){
		return new Search();
	}
	
		@RequestMapping(value="/jobs", method=RequestMethod.POST)
		public String jobSearchForm(@ModelAttribute("search")Search search,Model model){
			String seachValue= search.getTitle();
			String qualification =search.getQualification();
			model.addAttribute("jobs",jobService.findAllBy(seachValue,qualification));
			return "jobs";
		}
}
