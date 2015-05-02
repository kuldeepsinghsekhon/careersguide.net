package net.careersguide.controller;

import java.util.Calendar;
import javax.validation.Valid;
import net.careersguide.entity.User;
import net.careersguide.service.RegistrationService;
import net.careersguide.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class RegistrationController {
	@Autowired
	private RegistrationService registrationService;

	@Autowired
	private UserService userService;

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
			BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		if (bindingResult.hasErrors()) {
			return "register";
		}
		registrationService.saveUser(user);

		userService.saveResume(user);// @ModelAttribute("resume") Resume resume
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/register.html?success=true";

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
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "regcorp";
		}
		registrationService.saveCorp(usercorp);
		return "redirect:/regcorp.html?success=true";

	}

	

	@RequestMapping(value = "/regitrationConfirm", method = RequestMethod.GET)
	public String confirmRegistration(WebRequest request, Model model,
			@RequestParam("v") String v, @RequestParam("u") int u) {
		 int id=u;
		 String token=v;
		if (token == null) {
			String message = " invalid token";
			model.addAttribute("message",  message);
			return "redirect:/login.html";
		}

		User user = userService.findOneUser(id);

		Calendar cal = Calendar.getInstance();
		if ((user.getTokenExpiryDate().getTime() - cal.getTime().getTime()) <= 0) {
			model.addAttribute("message", "Token Expired");
			return "redirect:/login.html";
		}
		if(v.equals(user.getToken())){
		user.setEnabled(true);
		registrationService.conformUser(user);
		return "redirect:/index.html";
		}
		return "redirect:/login.html";
	}
	
}
