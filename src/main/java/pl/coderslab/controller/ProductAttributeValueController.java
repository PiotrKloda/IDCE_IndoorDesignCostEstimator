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
import pl.coderslab.entity.ProductAttributeValue;
import pl.coderslab.repository.AttributeRepository;
import pl.coderslab.repository.CategoryRepository;
import pl.coderslab.repository.ProductAttributeValueRepository;
import pl.coderslab.repository.ProductRepository;

@Controller
@RequestMapping("/productAttributeValue")
public class ProductAttributeValueController {

//	@Autowired
//	CategoryRepository categoryRepository;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	AttributeRepository attributeRespository;
	@Autowired
	ProductAttributeValueRepository productAttributeValueRepository;
	
	
	@GetMapping("/list")
	public String showList(Model model) {
		model.addAttribute("values", productAttributeValueRepository.findAll());
		return "productAttributeValue/list";
	}
	

	@GetMapping("/add")
	public String addCategory(Model model) {
		model.addAttribute("productAttributeValue", new ProductAttributeValue());
		return "productAttributeValue/add";
	}

	@PostMapping("/add")
	public String processAddCategoryForm(Model model, @Valid ProductAttributeValue productAttributeValue, BindingResult result) {
		
		if (result.hasErrors()) {
			return "productAttributeValue/add";
		}
		productAttributeValueRepository.save(productAttributeValue);
		return "redirect:/productAttributeValue/list";
	}

	@GetMapping("/edit/{id}")
	public String editProduct(Model model, @PathVariable long id) {
		model.addAttribute("productAttributeValue", productAttributeValueRepository.findOne(id));
		return "productAttributeValue/edit";
	}
	 @PostMapping("/edit/{id}")
	 public String processEditProductForm(Model model, @Valid ProductAttributeValue productAttributeValue, BindingResult result) {
	 if (result.hasErrors()) {
	 return "/edit/{id}";
	 }
	 productAttributeValueRepository.save(productAttributeValue);
	 return "redirect:/productAttributeValue/list";
	 }
	
	
	@GetMapping("/delete/{id}")
	public String deleteProduct(@PathVariable long id) {
		productAttributeValueRepository.delete(id);
		return "redirect:/productAttributeValue/list";
	}
	

	
	
//	//--------------------------------------------------------------------
//
//	@ModelAttribute("parents")
//	public List<Category> allCategories() {
//		return categoryRepository.findAll();
//	}

	@ModelAttribute("products")
	public List<Product> allProducts() {
		return productRepository.findAll();
	}
	
//	@ModelAttribute("categories")
//	public List<Category> allCategories() {
//		return categoryRepository.findAll();
//	}

	@ModelAttribute("attributes")
	public List<Attribute> allAttributes() {
		return attributeRespository.findAll();
	}

}