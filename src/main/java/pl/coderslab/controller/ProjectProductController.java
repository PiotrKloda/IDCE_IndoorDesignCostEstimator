package pl.coderslab.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entity.Category;
import pl.coderslab.entity.Project;
import pl.coderslab.repository.CategoryRepository;
import pl.coderslab.repository.ProjectRepository;

@Controller
@RequestMapping("/project")
public class ProjectProductController {

	@Autowired
	private ProjectRepository projectRepository;
	@Autowired
	private CategoryRepository categoryRepository;

	@GetMapping("/search")
	public String searchCategory(Model model) {
		List <Category> categoriesNotNull = categoryRepository.findByParent_idNull();
		model.addAttribute("categoriesNull", categoriesNotNull);
		return "/projectProducts/searchCategory";
	}
	
	
	

	@ModelAttribute("currentProject")
	public Project projectFromSession(HttpSession ses) {
		return (Project) ses.getAttribute("currentProject");
	}

}
