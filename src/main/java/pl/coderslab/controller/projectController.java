package pl.coderslab.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entity.Attribute;
import pl.coderslab.entity.Cart;
import pl.coderslab.repository.CartRepository;

@Controller
@RequestMapping("/project")
public class projectController {
	
	@Autowired
	private CartRepository CartRepository;

	
	@GetMapping("")
	public String homePage(){
		return "project/homePage";
	}
	
	@GetMapping("/new")
	public String createNewProject(Model model){
		model.addAttribute("cart", new Cart());
		return "project/newName";
	}
	@PostMapping("/new")
	public String processAddCategoryForm(Model model,@Valid Cart cart, BindingResult result) {
		if (result.hasErrors()) {
			return "project/newName";
		}
		cart.setCreated();
		CartRepository.save(cart);
		return "/project/selectCategory";
	}
	
	
	
	
	
}
