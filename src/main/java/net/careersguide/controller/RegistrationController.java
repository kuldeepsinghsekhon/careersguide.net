package net.careersguide.controller;

import net.careersguide.entity.Resume;
import net.careersguide.entity.User;
import net.careersguide.service.RegistrationService;
import net.careersguide.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class RegistrationController {
	@Autowired
	private RegistrationService registrationService;
	
	@Autowired
	private UserService userService;
	
	
	
	
	
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
		registrationService.saveUser(user);
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
		registrationService.saveCorp(usercorp);
		return "redirect:/regcorp.html";
		
	}
	
	
	
	

}
