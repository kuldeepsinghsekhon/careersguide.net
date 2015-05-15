package net.careersguide.controller;

import java.security.Principal;
import java.util.List;

import net.careersguide.entity.Apply;
import net.careersguide.entity.Question;
import net.careersguide.entity.Role;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;
import net.careersguide.modal.AssignTest;
import net.careersguide.modal.ListApply;
import net.careersguide.repository.TestRepository;
import net.careersguide.service.ApplyService;
import net.careersguide.service.TestService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ApplyController {

	@Autowired
	private UserService userService;

	@Autowired
	private ApplyService applyService;
	@Autowired
	private TestService testService;

	@RequestMapping(value = "/apply/{id}")
	public String doApplay(@PathVariable int id, Principal principal) {
		if(principal==null){
			return "redirect:/register.html";
			
		}
		String name = principal.getName();
		
			User user = userService.userByName(name);
			if(applyService.findByJobAndCandidate(id,user)){
				applyService.doApply(id, user);
				return "redirect:/jobs.html";
			}
			
			
			
		
	return "redirect:/jobs.html?success=false";
	}

	// List the jobs whom candidate had applied in candidate profile
	@RequestMapping("/applied-jobs")
	public String userJobs(Model model, Principal principal) {
		String name = principal.getName();
		User user = userService.userByName(name);
		model.addAttribute("appliedJobs", applyService.findByCandidate(user));
		return "applied-jobs";

	}

	@RequestMapping("/response/{id}")
	public String showApplies(Model model, Principal principal,
			@PathVariable int id) {
		String name = principal.getName();
		User user = userService.userByName(name);
		model.addAttribute("responses", applyService.findById(id));
		return "response";

	}
	@ModelAttribute("assigntest")
	public AssignTest assignExamModel(){
		return new AssignTest();
	}
	@RequestMapping(value="/response/{id}",method=RequestMethod.POST)
	public String assignExam(@PathVariable int id,@ModelAttribute("assigntest")AssignTest assigntest){
		applyService.setExam(id,assigntest.getTestid(),assigntest.getUserid());
		/*List<Apply> applies = exam.getApplies();
        
        if(null != applies && applies.size() > 0) {
           
            for (Apply apply : applies) {*/
            	//applyService.setExam(apply.getId(), apply.getExam());
               
          /*  }
        }*/
		return "redirect:/response/{id}.html";
	}
}
