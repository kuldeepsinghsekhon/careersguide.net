package net.careersguide.controller;

import javax.validation.Valid;

import net.careersguide.entity.Resume;
import net.careersguide.entity.User;
import net.careersguide.service.RegistrationService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
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
	public String doUserRegister(@Valid @ModelAttribute("user") User user,@ModelAttribute("resume") Resume resume,BindingResult result, RedirectAttributes redirectAttributes){
		
		registrationService.saveUser(user);
		
		userService.saveResume(resume,user);
		redirectAttributes.addFlashAttribute("success",true);
		return "redirect:/register.html?success=true";
		
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
		return "redirect:/regcorp.html?success=true";
		
	}
	
	
	
	

}
