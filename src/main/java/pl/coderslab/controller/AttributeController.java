package pl.coderslab.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;

import pl.coderslab.entity.Attribute;
import pl.coderslab.entity.Category;
import pl.coderslab.entity.Product;
import pl.coderslab.repository.AttributeRepository;
import pl.coderslab.repository.CategoryRepository;
import pl.coderslab.repository.ProductRepository;

@Controller
@RequestMapping("/attribute")
public class AttributeController {

	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	AttributeRepository attributeRespository;

	@GetMapping("/add")
	public String addCategory(Model model) {
		model.addAttribute("attribute", new Attribute());
		return "attribute/add";
	}

	@PostMapping("/add")
	public String processAddCategoryForm(Model model,@Valid Attribute attribute, BindingResult result) {
		if (result.hasErrors()) {
			return "attribute/add";
		}
//		List<Category> categories = attribute.getCategories();
//		for (Category each:categories){
//			System.out.println(each.getName());
//		}
		attributeRespository.save(attribute);
		return "redirect:/attribute/list";
	}

	@GetMapping("/edit/{id}")
	public String editBook(Model model, @PathVariable long id) {
		model.addAttribute("attribute", attributeRespository.findOne(id));
		return "attribute/edit";
	}
	
	 @PostMapping("/edit/{id}")
	 public String processEditCategoryForm(Model model, @Valid Attribute attribute, BindingResult result) {
	 if (result.hasErrors()) {
	 return "/edit/{id}";
	 }
	 attributeRespository.save(attribute);
	 return "redirect:/attribute/list";
	 }

	@GetMapping("/delete/{id}")
	public String deleteAttribute(@PathVariable long id) {
		attributeRespository.delete(id);
		return "redirect:/attribute/list";
	}
	

	@GetMapping("/list")
	public String showList(Model model) {
		model.addAttribute("attributes", attributeRespository.findAll());
		return "attribute/list";
	}
	
	//--------------------------------------------------------------------


	@ModelAttribute("allAttributes")
	public List<Attribute> allAttributes() {
		return attributeRespository.findAll();
	}
	
	@ModelAttribute("allCategories")
	public List<Category> allCategories() {
		return categoryRepository.findAll();
	}

}