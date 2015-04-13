package net.careersguide.controller;

import net.careersguide.service.TestService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	@RequestMapping("/tests")
	public String ShowTests(Model model){
		model.addAttribute("tests",testService.findAll());
		return "tests";
	}

	
}
