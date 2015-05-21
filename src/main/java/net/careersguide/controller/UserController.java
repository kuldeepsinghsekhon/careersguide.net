package net.careersguide.controller;



import java.security.Principal;

import net.careersguide.service.UserDetailService;
import net.careersguide.service.UserService;
import net.careersguide.entity.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private UserDetailService userDetailService;
	@RequestMapping("/users")
	public String findAllUser(Model model)
	{
		model.addAttribute("users",userService.findAll());
		return "users";
	}
	@RequestMapping("/users/{id}")
	public String findOneUser(Model model,@PathVariable int id)
	{
		User user=userService.findOneUser(id);
		model.addAttribute("user",user);
		model.addAttribute("userDetail",userDetailService.findUserDetails(user));
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
	
	
	@RequestMapping("/users/remove/{id}")
	public String removeUser(@PathVariable int id)
	{
		userService.removeUser(id);
		return "redirect:/users.html";
	}
}
