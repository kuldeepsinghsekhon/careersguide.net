package net.careersguide.controller;

import java.security.Principal;

import net.careersguide.entity.Question;
import net.careersguide.entity.Test;
import net.careersguide.service.TestService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	@RequestMapping("/tests")
	public String ShowTests(Model model,Principal principal){
		String name=principal.getName();
		model.addAttribute("tests",testService.findAllByUser(name));
		return "tests";
	}

	@RequestMapping("/test/{id}")
	public String findOneTest(Model model,@PathVariable int id){
		model.addAttribute("testdetail",testService.findOneTest(id));
		return "test";
	}
	@ModelAttribute("test")
	public Test createTestModel(){
		return new Test();
	}
	@RequestMapping(value="/tests",method=RequestMethod.POST)
	public String createTest(@ModelAttribute("test")Test test,Principal principal){
		String name=principal.getName();
		testService.createTest(test,name);
	return "redirect:/tests.html";	
	}
	@ModelAttribute("question")
	public Question createQuestionModel(){
		return new Question();
	}
	@RequestMapping(value="/test/{id}",method=RequestMethod.POST)
	public String createQuestion(@ModelAttribute("question")Question question,Principal principal,@PathVariable int id){
		String name=principal.getName();
		testService.createQuestion(question,name,id);
	return "redirect:/test/{id}.html";	
	}
}
