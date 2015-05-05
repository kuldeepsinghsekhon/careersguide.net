package net.careersguide.controller;



import java.security.Principal;
import java.util.List;

import net.careersguide.entity.Education;
import net.careersguide.entity.Experience;
import net.careersguide.entity.Resume;
import net.careersguide.entity.Skill;
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
		String email=principal.getName();
		model.addAttribute("resumeContent",userService.findUserResume(email));
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
	@RequestMapping("/experiences")
	public String showExperiences(){
		return"experiences";
	}
	@ModelAttribute("experiences")
	public Experience experiencesModel(){
		return new Experience();
	}
	@RequestMapping(value="/experiences",method=RequestMethod.POST)
	public String doExperienceUpdate(@ModelAttribute("resume")Resume resume,Principal principal){
		String name =principal.getName();
		if(name==null){return "redirect:/login.html";}
		List<Experience>experiences=resume.getExperiences();
		if(null != experiences && experiences.size() > 0) {
           // ContactController.contacts = experiences;
            for (Experience experience : experiences) {
                userService.saveExperience(experience,name);
            }
        }
		return "redirect:/experiences.html?success=true";
	}
	@RequestMapping("/education")
	public String showEducation(){
		return"education";
	}
	@RequestMapping(value="/education",method=RequestMethod.POST)
	public String doEducationUpdate(@ModelAttribute("resume")Resume resume,Principal principal){
		String name =principal.getName();
		if(name==null){return "redirect:/login.html";}
		List<Education>educations=resume.getEducation();
		if(null != educations && educations.size() > 0) {
           // ContactController.contacts = experiences;
            for (Education education : educations) {
                userService.saveEducation(education,name);
            }
        }
		return "redirect:/education.html?success=true";
	}
	@RequestMapping("/skills")
	public String showSkills(){
		return"skills";
	}
	@RequestMapping(value="/skills",method=RequestMethod.POST)
	public String doSkillUpdate(@ModelAttribute("resume")Resume resume,Principal principal){
		String name =principal.getName();
		if(name==null){return "redirect:/login.html";}
		List<Skill>skills=resume.getSkills();
		if(null != skills && skills.size() > 0) {
           // ContactController.contacts = experiences;
            for (Skill skill : skills) {
                userService.saveSkill(skill,name);
            }
        }
		return "redirect:/skills.html?success=true";
	}
	@RequestMapping("/users/remove/{id}")
	public String removeUser(@PathVariable int id)
	{
		userService.removeUser(id);
		return "redirect:/users.html";
	}
}
