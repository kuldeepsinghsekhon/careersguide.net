package net.careersguide.controller;

import net.careersguide.entity.Search;
import net.careersguide.service.JobService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	@Autowired
	private UserService userService;
	@Autowired
	private JobService jobservice;
	@ModelAttribute("search")
	public Search createSearchForm(){
		return new Search();
	}
	
		@RequestMapping(value="/index", method=RequestMethod.POST)
		public String jobSearchForm(@ModelAttribute("search")Search search,Model model){
			String seachValue= search.getTitle();
			String qualification =search.getQualification();
			model.addAttribute("jobs",jobservice.findAllBy(seachValue,qualification));
			return "jobs";
		}
	
	
	
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
