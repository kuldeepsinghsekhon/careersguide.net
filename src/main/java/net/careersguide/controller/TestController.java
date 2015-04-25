package net.careersguide.controller;

import java.security.Principal;

import net.careersguide.entity.Question;
import net.careersguide.entity.Test;
import net.careersguide.repository.QuestionRepository;
import net.careersguide.repository.TestRepository;
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
	
	//Find all Exams of one user and Display it on tests.jsp
	@RequestMapping("/tests")
	public String ShowTests(Model model,Principal principal){
		String name=principal.getName();
		model.addAttribute("tests",testService.findAllByUser(name));
		return "tests";
	}

	//create an object for new test/exam
	@ModelAttribute("test")
	public Test createTestModel(){
		return new Test();
	}
	
	//if test page has post request add post object to database
	@RequestMapping(value="/tests",method=RequestMethod.POST)
	public String createTest(@ModelAttribute("test")Test test,Principal principal){
		String name=principal.getName();
		testService.createTest(test,name);
	return "redirect:/tests.html";	
	}
	
	//remove Exam of id
	@RequestMapping(value="/tests/remove/{id}")
	public String removeExam(@PathVariable int id){
		Test test =testService.findOneTest(id);
		testService.deleteTest(test);
	return "redirect:/tests.html";	
	}
	
	//show all questions of test of id
		@RequestMapping("/test/{id}")
		public String findOneTest(Model model,@PathVariable int id){
			Test test=testService.findOneTest(id);
			model.addAttribute("questions",testService.findQuestions(test));
			return "test";
		}
		
	@ModelAttribute("addquestion")
	public Question createQuestionModel(){
		return new Question();
	}
	@RequestMapping(value="/test/{id}",method=RequestMethod.POST)
	public String addQuestion(@PathVariable int id,@ModelAttribute("addquestion")Question question){
		Test test=testService.findOneTest(id);
		testService.addQuestion(question,test);
		return "redirect:/test/{id}.html";
		
	}
}
