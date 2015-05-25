package net.careersguide.controller;

import java.security.Principal;
import java.util.List;

import net.careersguide.entity.Answers;
import net.careersguide.entity.Apply;
import net.careersguide.entity.Job;
import net.careersguide.entity.Question;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;
import net.careersguide.service.ApplyService;
import net.careersguide.service.JobService;
import net.careersguide.service.TestService;
import net.careersguide.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	@Autowired
	private UserService userService;
	@Autowired
	private ApplyService applyService;
	@Autowired
	private JobService jobService;
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
	
	@RequestMapping("/response/{id}/result")
	public String examResult(Model model,@PathVariable int id){
		Job job =jobService.findOneJob(id);
		testService.testResult(job);
		
		return "redirect:/response/{id}.html";
	}
	 
	@ModelAttribute("answers")
	public Answers createAnswersModel(){
		return new Answers();
	}
	//show all questions of test of id
			@RequestMapping("/exam/{id}/{pn}")
			public String giveExam(Model model,@PathVariable int id,@PathVariable int pn,@ModelAttribute("answers")Answers answers,Principal principal){
				if(principal==null){
					return "redirect:/login.html";
				}
				Test test=testService.findOneTest(id);
				User user =userService.userByName(principal.getName());
				Apply apply=applyService.findByTestAndCandidate(test,user);
				if(apply==null){
					return "redirect:/login.html";
				}
				model.addAttribute("questions",testService.findPagedQuestions(test,pn));
				model.addAttribute("qn",testService.findPaged1Questions(test));
				model.addAttribute("id",id);
				model.addAttribute("pn",pn);
				return "exam";
			}
			@RequestMapping(value="/exam/{id}/{pn}",method=RequestMethod.POST)
			public String addAnswers(@PathVariable int id,@PathVariable int pn,@ModelAttribute("answers")Answers answers,Principal principal){
				if(principal.getName()==null){
					return "redirect:/login.html";
				}
				User user =userService.userByName(principal.getName());
				
				Test test= testService.findOneTest(id);
				
				Question question=testService.findOne(pn);
				Apply apply=applyService.findByTestAndCandidate(test,user);
				if(apply!=null){
					testService.addAnswers(test,question,user,apply,answers.getAnswer());
					
					return "redirect:/exam/{id}/{pn}.html";
					
				}
				
				return "redirect:/index.html";
			}
}
