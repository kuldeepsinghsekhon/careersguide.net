package net.careersguide.controller;

import java.security.Principal;
import java.util.List;

import net.careersguide.entity.Education;
import net.careersguide.entity.Experience;
import net.careersguide.entity.Resume;
import net.careersguide.entity.Skill;
import net.careersguide.entity.User;
import net.careersguide.service.UserDetailService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class UserDetailController {

	@Autowired
	private UserDetailService userDetailService;
	@Autowired
	private UserService userService;
	@RequestMapping("/resume")
	public String viewUserResume(Model model,Principal principal)
	{
		String email=principal.getName();
		model.addAttribute("resumeContent",userDetailService.findUserResume(email));
		
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
		model.addAttribute("resume",userDetailService.findUserResume(name));
		return "resume-update";
	}
	@RequestMapping(value="/resume-update", method=RequestMethod.POST)
	public String doResumeUpdate(@ModelAttribute("resume") Resume resume,Principal principal){
		String name=principal.getName();
		
		userDetailService.updateResume(resume,name);
		return "redirect:/resume-update.html";
		
	}
	@RequestMapping("/experiences")
	public String showExperiences(Model model,Principal principal){
		String name =principal.getName();
		if(name==null){return "redirect:/login.html";}
		model.addAttribute("experiences",userDetailService.findUserExperiences(name));
		return"experiences";
	}
	@ModelAttribute("experience")
	public Experience experiencesModel(){
		return new Experience();
	}
	@RequestMapping(value="/experiences",method=RequestMethod.POST)
	public String doExperienceUpdate(@ModelAttribute("experience")Experience experience,Principal principal){
		String name =principal.getName();
		if(name==null){return "redirect:/login.html";}
		userDetailService.saveExperience(experience,name);
		return "redirect:/experiences.html?success=true";
	}
	@RequestMapping("/education")
	public String showEducation(Model model,Principal principal){
		if(principal==null){return "redirect:/login.html";}
		String name=principal.getName();
		model.addAttribute("educations", userDetailService.findEducationByResume(name));
		return"education";
	}
	@RequestMapping(value="/education",method=RequestMethod.POST)
	public String doEducationUpdate(@ModelAttribute("resume")Resume resume,Principal principal){
		String name =principal.getName();
		if(name==null){return "redirect:/login.html";}
		List<Education>educations=resume.getEducation();
		if(null != educations && educations.size() > 0) {
           
            for (Education education : educations) {
                userDetailService.saveEducation(education,name);
            }
        }
		return "redirect:/education.html?success=true";
	}
	@ModelAttribute("skills")
	public Skill skillModel(){
		return new Skill();
	}
	@RequestMapping("/skills")
	public String showSkills(Model model,Principal principal){
		if(principal==null){return "redirect:/login.html";}
		String name= principal.getName();
		model.addAttribute("skills",userDetailService.findUserSkills(name));
		return"skills";
	}
	
	@RequestMapping(value="/skills",method=RequestMethod.POST)
	public String doSkillUpdate(@ModelAttribute("resume")Resume resume,Principal principal){
		String name =principal.getName();
		if(name==null){return "redirect:/login.html";}
		List<Skill>skills=resume.getSkills();
		if(null != skills && skills.size() > 0) {
			 for (Skill skill : skills) {
		
                userDetailService.saveSkill(skill,name);
		}
	}
		return "redirect:/skills.html?success=true";
	}
	@RequestMapping("/resume/{id}")
	public String showUserResume(Model model,@PathVariable int id)
	{
		User user =userService.findUser(id);
		model.addAttribute("resumeContent",userDetailService.findByUser(user));
		return "resume";
	}
}
