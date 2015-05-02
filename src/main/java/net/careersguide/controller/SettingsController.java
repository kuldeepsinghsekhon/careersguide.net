package net.careersguide.controller;

import java.security.Principal;
import java.util.Calendar;
import java.util.UUID;

import net.careersguide.entity.PassWord;
import net.careersguide.entity.User;
import net.careersguide.service.RegistrationService;
import net.careersguide.service.SettingsService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

@Controller
public class SettingsController {

	@Autowired
	private RegistrationService registrationService;
	@Autowired
	private SettingsService settingsService;

	@Autowired
	private UserService userService;

	@RequestMapping("/settings")
	public String showChageSettings() {

		return "settings";
	}

	// /Forgot Password process Start open forgotpass page and send token
	@RequestMapping("/forgotpass")
	public String showRenewPassword() {
		return "forgotpass";
	}

	@ModelAttribute("forgotpass")
	public User renewPasswordModel() {
		return new User();
	}

	@RequestMapping(value = "/forgotpass", method = RequestMethod.POST)
	public String renewPassword(@ModelAttribute("forgotpass") User user) {
		String email = user.getEmail();
		if(email==null){
			return "redirect:/forgotpass.html?success=false";
		}
		settingsService.renewPasswordRequest(email);
		return "redirect:/forgotpass.html?success=true";
	}

	// Now user will check mail and open password reset token confirmation
	
	@RequestMapping(value = "/passwordupdate", method = RequestMethod.GET)
	public String showChangePasswordPage(WebRequest request, Model model,@RequestParam("u") int u,@RequestParam("token") String token) {
	     User user = settingsService.userById(u);
	    String passToken = user.getPasswordResetToken();
	   
	    if (passToken == null ) {
	        String message = "invalid Token";
	        model.addAttribute("message", message);
	        return "redirect:/login.html";
	    }
	 
	   /* Calendar cal = Calendar.getInstance();
	    if ((user.getPrtExpiryDate().getTime() - cal.getTime().getTime()) <= 0) {
	    	String message ="token expired";
	        model.addAttribute("message", message);
	        return "redirect:/login.html";
	    }*/
	 if(passToken.equals(token)){
	    Authentication auth = new UsernamePasswordAuthenticationToken(user.getEmail(),user.getPassword());
	    SecurityContextHolder.getContext().setAuthentication(auth);
	 
	    return "redirect:/settings.html";
	 }
	 return "redirect:/login.html";
	}
	
	
	// Change Password
	@RequestMapping("/pass")
	public String changePassword() {
		return "pass";
	}

	@ModelAttribute("changepass")
	public User modelChangePassword() {
		return new User();
	}

	/*@RequestMapping(value = "/settings", method = RequestMethod.POST)
	public String changePassword(@ModelAttribute("changepass") User user,
			Principal principal) {
		String name = principal.getName();
		settingsService.changePassword(name, user.getPassword());
		return "redirect:/settings.html?success=true";
	}*/
	@RequestMapping(value = "/pass", method = RequestMethod.POST)
	@ResponseBody
	public String changePassword(@RequestParam("password") String password,
			Principal principal) {
		String name = principal.getName();
		settingsService.changePassword(name, password);
		return "true";
	}

}
