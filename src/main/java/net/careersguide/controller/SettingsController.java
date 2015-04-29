package net.careersguide.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SettingsController {

	@RequestMapping("/settings")
	public String showChageSettings(){
		
		return "settings";
	}
	
}
