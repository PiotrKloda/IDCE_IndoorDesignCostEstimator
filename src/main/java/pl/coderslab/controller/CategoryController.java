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

import pl.coderslab.entity.Attribute;
import pl.coderslab.entity.Category;
import pl.coderslab.entity.Product;
import pl.coderslab.repository.AttributeRepository;
import pl.coderslab.repository.CategoryRepository;
import pl.coderslab.repository.ProductRepository;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	AttributeRepository attributeRespository;

	@GetMapping("/add")
	public String addCategory(Model model) {
		model.addAttribute("category", new Category());
		return "category/add";
	}

	@PostMapping("/add")
	public String processAddCategoryForm(Model model, @Valid Category category, BindingResult result) {
		if (result.hasErrors()) {
			return "category/add";
		}
		categoryRepository.save(category);
		return "redirect:/category/list";
	}

	@GetMapping("/edit/{id}")
	public String editBook(Model model, @PathVariable long id) {
		model.addAttribute("category", categoryRepository.findOne(id));
		return "category/edit";
	}
	 @PostMapping("/edit/{id}")
	 public String processEditCategoryForm(Model model, @Valid Category category, BindingResult result) {
	 if (result.hasErrors()) {
	 return "/edit/{id}";
	 }
	 categoryRepository.save(category);
	 return "redirect:/category/list";
	 }

	@GetMapping("/delete/{id}")
	public String deleteCategory(@PathVariable long id) {
//		Category category = categoryRepository.findOne(id);
		categoryRepository.delete(id);
		return "redirect:/category/list";
	}
	

	@GetMapping("/list")
	public String showList(Model model) {
		model.addAttribute("categories", categoryRepository.findAll());
		return "category/list";
	}
	
	//--------------------------------------------------------------------

	@ModelAttribute("parents")
	public List<Category> allCategories() {
		return categoryRepository.findAll();
	}

	@ModelAttribute("products")
	public List<Product> allProducts() {
		return productRepository.findAll();
	}

	@ModelAttribute("attributes")
	public List<Attribute> allAttributes() {
		return attributeRespository.findAll();
	}

}