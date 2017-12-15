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
public class ProjectController {

	@Autowired
	private ProjectRepository projectRepository;


	@GetMapping("")
	public String homePage() {
		return "project/homePage";
	}

	@GetMapping("/new")
	public String createNewProject(Model model) {
		model.addAttribute("cart", new Project());
		return "project/new";
	}

	@PostMapping("/new")
	public String processAddCategoryForm(Model model, @Valid Project project, BindingResult result, HttpSession ses) {
		if (result.hasErrors()) {
			return "project/new";
		}
		project.setCreated();
		projectRepository.save(project);
		if (ses.getAttribute("currentProject") == null) {
			ses.setAttribute("currentProject", project);
		}
		model.addAttribute("currentProject", project);
		return "redirect:/project/details/"+project.getId();
	}

	@GetMapping("/list")
	public String loadAllProjects(Model model) {
		model.addAttribute("allProjects", projectRepository.findAll());
		return "/project/list";
	}
	
	@GetMapping("/details/{id}")
	public String buildProject(Model model,@PathVariable long id, HttpSession ses){
		Project project = projectRepository.findOne(id);
		Project currentProject = (Project)ses.getAttribute("currentProject");
		if (currentProject == null || currentProject.getId() != project.getId()) {
			ses.setAttribute("currentProject", project);
		}
		model.addAttribute("currentProject", project);
		return "/project/details";
		
	}
	
	
	
	
	
	

	@ModelAttribute("currentProject")
	public Project projectFromSession(HttpSession ses) {
		return (Project) ses.getAttribute("currentProject");
	}

}
