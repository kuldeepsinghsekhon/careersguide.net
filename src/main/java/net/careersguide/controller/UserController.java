package net.careersguide.controller;



import java.security.Principal;

import net.careersguide.entity.Resume;

import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/users")
	public String findAllUser(Model model)
	{
		model.addAttribute("users",userService.findAll());
		return "users";
	}
	@RequestMapping("/users/{id}")
	public String findOneUser(Model model,@PathVariable int id)
	{
		model.addAttribute("user",userService.findOneUser(id));
		return "profile";
	}
	
	//View Other people Profile
	@RequestMapping("/profile/{id}")
	public String userProfile(Model model,@PathVariable int id,Principal principal)
	{
		
		model.addAttribute("user",userService.findOneUser(id));
	
		return "profile";
	}
	//View Self Profile
	@RequestMapping("/profile")
	public String findOneUser(Model model,Principal principal)
	{
		String name=principal.getName();
		model.addAttribute("user",userService.userByName(name));
		return "profile";
	}
	
	@RequestMapping("/resume")
	public String viewUserResume(Model model,Principal principal)
	{
		String name=principal.getName();
		model.addAttribute("resumeContent",userService.findUserResume(name));
		//model.addAttribute("user",userService.findOneUser(id));
		return "resume";
	}
	
	@ModelAttribute("resume")
	public Resume resumeConstruct(){
		return new Resume();
	}
	@RequestMapping("/resume-update")
	public String updateUserResume(Model model,Principal principal)
	{
		String name =principal.getName();
		model.addAttribute("resume",userService.findUserResume(name));
		return "resume-update";
	}
	@RequestMapping(value="/resume-update", method=RequestMethod.POST)
	public String doResumeUpdate(@ModelAttribute("resume") Resume resume,Principal principal){
		String name=principal.getName();
		
		userService.updateResume(resume,name);
		return "redirect:/resume-update.html";
		
	}
	
	@RequestMapping("/users/remove/{id}")
	public String removeUser(@PathVariable int id)
	{
		userService.removeUser(id);
		return "redirect:/users.html";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
