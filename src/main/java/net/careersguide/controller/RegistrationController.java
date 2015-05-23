package net.careersguide.controller;

import java.util.Calendar;

import javax.servlet.ServletRequest;
import javax.validation.Valid;

import net.careersguide.entity.User;
import net.careersguide.service.RegistrationService;
import net.careersguide.service.UserDetailService;
import net.careersguide.service.UserService;
import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class RegistrationController {
	@Autowired
	private RegistrationService registrationService;
	@Autowired
	private UserDetailService userDetailService;

	@Autowired
	private UserService userService;
	@Autowired
	private ReCaptchaImpl reCaptcha;
	@RequestMapping("/register")
	public String registerUser() {
		return "register";
	}

	@ModelAttribute("user")
	public User userConstruct() {
		return new User();

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String doUserRegister(@Valid @ModelAttribute("user") User user,
			BindingResult bindingResult, RedirectAttributes redirectAttributes,@RequestParam("recaptcha_challenge_field") String challangeField, 
			@RequestParam("recaptcha_response_field") String responseField,ServletRequest servletRequest) {
		
		
		String remoteAddress = servletRequest.getRemoteAddr();
		ReCaptchaResponse reCaptchaResponse = this.reCaptcha.checkAnswer(remoteAddress, challangeField, responseField);
		if (bindingResult.hasErrors()) {
			return "redirect:/register.html?captcha=false";
		}
		if(reCaptchaResponse.isValid() && !bindingResult.hasErrors()){
		registrationService.saveUser(user);

		userDetailService.saveResume(user);// @ModelAttribute("resume") Resume resume
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/register.html?success=true";
		}
		return "redirect:/register.html?success=false";
	}

	@RequestMapping("/regcorp")
	public String registerCorp() {

		return "regcorp";
	}

	@ModelAttribute("usercorp")
	public User corpConstruct() {
		return new User();
	}

	@RequestMapping(value = "/regcorp", method = RequestMethod.POST)
	public String doCorpRegister(@Valid @ModelAttribute("usercorp") User usercorp,
			BindingResult bindingResult,@RequestParam("recaptcha_challenge_field") String challangeField, 
			@RequestParam("recaptcha_response_field") String responseField,ServletRequest servletRequest) {
		String remoteAddress = servletRequest.getRemoteAddr();
		ReCaptchaResponse reCaptchaResponse = this.reCaptcha.checkAnswer(remoteAddress, challangeField, responseField);
		if (bindingResult.hasErrors()) {
			return "regcorp.html?captcha=false";
		}
		if(reCaptchaResponse.isValid() && !bindingResult.hasErrors()){
		registrationService.saveCorp(usercorp);
		userDetailService.saveResume(usercorp);
		return "redirect:/regcorp.html?success=true";
		}
		return "redirect:/regcorp.html?success=false";
	}

	

	@RequestMapping(value = "/regitrationConfirm", method = RequestMethod.GET)
	public String confirmRegistration(WebRequest request, Model model,
			@RequestParam("v") String v, @RequestParam("u") int u) {
		 int id=u;
		 String token=v;
		if (token == null) {
			String message = " invalid token";
			model.addAttribute("message",  message);
			return "redirect:/login.html?regsuccess=false";
		}

		User user = userService.findUser(id);

		Calendar cal = Calendar.getInstance();
		if ((user.getTokenExpiryDate().getTime() - cal.getTime().getTime()) <= 0) {
			model.addAttribute("message", "Token Expired");
			return "redirect:/login.html?regsuccess=false";
		}
		if(v.equals(user.getToken())){
		user.setEnabled(true);
		registrationService.conformUser(user);
		return "redirect:/login.html?regsuccess=true";
		}
		return "redirect:/login.html";
	}
	
	//==================================================================
	
	
	
	@RequestMapping("/setting")
	public String cregisterUser() {
		return "setting";
	}
	@RequestMapping(value = "/setting", method = RequestMethod.POST)
	public String cdoUserRegister(@Valid @ModelAttribute("user") User user,
			BindingResult bindingResult, RedirectAttributes redirectAttributes,@RequestParam("recaptcha_challenge_field") String challangeField, 
			@RequestParam("recaptcha_response_field") String responseField,ServletRequest servletRequest,
			SessionStatus sessionStatus) {
		String remoteAddress = servletRequest.getRemoteAddr();
		ReCaptchaResponse reCaptchaResponse = this.reCaptcha.checkAnswer(remoteAddress, challangeField, responseField);
		if (bindingResult.hasErrors()) {
			return "setting";
		}
		if(reCaptchaResponse.isValid() && !bindingResult.hasErrors()){
		registrationService.saveUser(user);

		userDetailService.saveResume(user);// @ModelAttribute("resume") Resume resume
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/setting.html?success=true";
		}
		return "redirect:/setting.html?success=false";
	}
	
}
