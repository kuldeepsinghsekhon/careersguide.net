package net.careersguide.controller;

import java.security.Principal;
import java.util.List;

import net.careersguide.entity.Role;
import net.careersguide.entity.User;
import net.careersguide.service.ApplyService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplyController {

	@Autowired
	private UserService userService;

	@Autowired
	private ApplyService applyService;

	@RequestMapping(value = "/apply/{id}")
	public String doApplay(@PathVariable int id, Principal principal) {
		String name = principal.getName();
		User user = userService.userByName(name);
		applyService.doApply(id, user);
		return "redirect:/jobs.html";
	}

	// List the jobs whom candidate had applied in candidate profile
	@RequestMapping("/applied-jobs")
	public String userJobs(Model model, Principal principal) {
		String name = principal.getName();
		User user = userService.userByName(name);
		model.addAttribute("appliedJobs", applyService.findByCandidate(user));
		return "applied-jobs";

	}

	@RequestMapping("/applies/{id}")
	public String showApplies(Model model, Principal principal,
			@PathVariable int id) {
		String name = principal.getName();
		User user = userService.userByName(name);
		model.addAttribute("candidates", applyService.findById(id));
		return "applies";

	}

}
