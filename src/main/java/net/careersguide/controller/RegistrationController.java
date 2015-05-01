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
			String message = " invalid token";// messages.getMessage("auth.message.invalidToken",
												// null, locale);
			model.addAttribute("message", " message");
			return "redirect:/login.html";
		}

		User user = userService.findOneUser(id);

		Calendar cal = Calendar.getInstance();
		if ((user.getTokenExpiryDate().getTime() - cal.getTime().getTime()) <= 0) {
			model.addAttribute("message", "Token Expired");
			return "redirect:/login.html";
		}

		user.setEnabled(true);
		registrationService.conformUser(user);
		return "redirect:/index.html";
	}
	///Forgot Password process Start open forgotpass page and send token
	@RequestMapping("/forgotpass")
	public String showRenewPassword() {
		return "forgotpass";
	}
	@ModelAttribute("forgotpass")
	public User renewPasswordModel() {
		return new User();
	}
	@RequestMapping(value="/forgotpass",method= RequestMethod.POST)
	public String renewPassword(@ModelAttribute("changepass") User user) {
		String email=user.getEmail();
		registrationService.renewPasswordRequest(email);
		return "redirect:/forgotpass.html?success=true";
	}
	//Now user will check mail and open password reset token confirmation redirected to new Change password page 
	
	
	@RequestMapping("/updatepass")
	public String showUpdatepass(){
		return "updatepass";
}
	@ModelAttribute("updatepass")
	public User createUpdatepassModel(){
		return new User();
	}
	@RequestMapping(value="/updatepass",method=RequestMethod.POST)
	public String updatePassword(@ModelAttribute("updatepass")User user){
		String token = user.getToken();
		String email =user.getEmail();
		String password =user.getPassword();
		User dbuser =userService.userByName(email);
		if(dbuser.getForgotPassToken().contentEquals(token)){
		registrationService.changeForgotPassword(email,password);
		return "redirect:/login.html";
		}
		return "forgotpass";
	}
	
	@RequestMapping("/pass")
	public String changePassword() {
		return "pass";
	}

	@ModelAttribute("changepass")
	public User modelChangePassword() {
		return new User();
	}
}
