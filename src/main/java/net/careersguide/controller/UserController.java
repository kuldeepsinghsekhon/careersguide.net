package net.careersguide.controller;



import java.security.Principal;

import net.careersguide.entity.Resume;
import net.careersguide.entity.User;
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
		return "user-profile";
	}
	@RequestMapping("/resume")
	public String viewUserResume(Model model,Principal principal)
	{
		String name=principal.getName();
		model.addAttribute("resumeContent",userService.findUserResume(name));
		//model.addAttribute("user",userService.findOneUser(id));
		return "resume";
	}
	@RequestMapping("/resume-update")
	public String updateUserResume()
	{
		//model.addAttribute("user",userService.findOneUser(id));
		return "resume-update";
	}
	@ModelAttribute("resume")
	public Resume resumeConstruct(){
		return new Resume();
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
	@RequestMapping("/register")
	public String registerUser()
	{
		
		return "register";
	}
	@ModelAttribute("user")
	public User userConstruct(){
		return new User();
		
	}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String doUserRegister(@ModelAttribute("user") User user,@ModelAttribute("resume") Resume resume){
		userService.saveUser(user);
		userService.saveResume(resume,user);
		return "redirect:/register.html";
		
	}
	
	
	@RequestMapping("/regcorp")
	public String registerCorp()
	{
		
		return "regcorp";
	}
	@ModelAttribute("usercorp")
	public User corpConstruct(){
		return new User();
	}
	@RequestMapping(value="/regcorp", method=RequestMethod.POST)
	public String doCorpRegister(@ModelAttribute("usercorp") User usercorp){
		userService.saveCorp(usercorp);
		return "redirect:/regcorp.html";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
