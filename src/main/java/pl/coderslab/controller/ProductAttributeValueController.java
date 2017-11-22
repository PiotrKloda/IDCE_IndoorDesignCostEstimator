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

	
	//----------------------------------------CRUD FOR OPERATIONS IN OWN VIEW
	@GetMapping("/add")
	public String addCategory(Model model) {
		model.addAttribute("productAttributeValue", new ProductAttributeValue());
		return "productAttributeValue/add";
	}

	@PostMapping("/add")
	public String processAddCategoryForm(Model model, @Valid ProductAttributeValue productAttributeValue,
			BindingResult result) {

		if (result.hasErrors()) {
			return "/productAttributeValue/add";
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
	public String processEditProductForm(Model model, @Valid ProductAttributeValue productAttributeValue,
			BindingResult result) {
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
	
	
	//----------------------------------------CRUD FOR OPERATIONS IN PRODUCT VIEW
	@GetMapping("/addForProduct/{productId}")
	public String addProductAttributeValueForSpecifiedProduct(@PathVariable("productId") Long id, Model model) {
		ProductAttributeValue productAttributeValue = new ProductAttributeValue();
		model.addAttribute("productAttributeValue", productAttributeValue);
		model.addAttribute("product_id", id);
		return "productAttributeValue/addForSpecifiedProduct";
	}

	@PostMapping("/addForProduct/{productId}")
	public String ProcessAddProductAttributeValueForSpecifiedProduct(@PathVariable("productId") Long id,
			@Valid ProductAttributeValue productAttributeValue, BindingResult result, Model model) {
		System.err.println("--pav.id =     " + productAttributeValue.getId());
		System.err.println("--pav.value =    " + productAttributeValue.getValue());
		System.err.println("--pav.product =     " + productAttributeValue.getProduct());
		System.err.println("--pav.attribute = " + productAttributeValue.getAttribute());
		if (result.hasErrors()) {
			return "productAttributeValue/addForSpecifiedProduct";
		}
		productAttributeValueRepository.save(productAttributeValue);
		return "redirect:/product/" + id;
	}
	
	@GetMapping("/editForProduct/{id}")
	public String editProductAttributeValueForSpecifiedProduct(Model model, @PathVariable long id) {
		model.addAttribute("productAttributeValue", productAttributeValueRepository.findOne(id));
		return "productAttributeValue/editForSpecifiedProduct";
	}

	@PostMapping("/editForProduct/{id}")
	public String processEditProductAttributeValueForSpecifiedProduct(@PathVariable Long id,Model model, @Valid ProductAttributeValue productAttributeValue,
			BindingResult result) {
		if (result.hasErrors()) {
			return "/editForProduct/{id}";
		}
		productAttributeValueRepository.save(productAttributeValue);
		return "redirect:/product/" + productAttributeValue.getProduct().getId();
	}
	
	

	@GetMapping("/deletedForProduct/{id}")
	public String deleteForProduct(@PathVariable long id) {
		Long idAdress = productAttributeValueRepository.findOne(id).getProduct().getId();
		productAttributeValueRepository.delete(id);
		return "redirect:/product/" + idAdress;
	}

	// //--------------------------------------------------------------------

	@ModelAttribute("products")
	public List<Product> allProducts() {
		return productRepository.findAll();
	}

	@ModelAttribute("attributes")
	public List<Attribute> allAttributes() {
		return attributeRespository.findAll();
	}

}