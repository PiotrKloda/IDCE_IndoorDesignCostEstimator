package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class homePageController {

	
	@GetMapping("/")
	public String homePage(){
		return "homePage";
	}
	
	@GetMapping("/db")
	public String dbManagement() {
		return "dataBaseManagement";
	}
}
