package pl.coderslab.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="categories")
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@NotBlank
	private String name;
	
	@NotNull
	@NotBlank
	private String description;
	
	@ManyToOne
	private Category parent;
	
	
	@OneToMany(mappedBy="category") 
	private List<Product> products ;
	

	@ManyToMany(mappedBy="categories",fetch=FetchType.EAGER)
	private List<Attribute> attributes ;


	public long getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getDescription() {
		return description;
	}


	public Category getParent() {
		return parent;
	}


	public List<Product> getProducts() {
		return products;
	}


	public List<Attribute> getAttributes() {
		return attributes;
	}


	public void setId(long id) {
		this.id = id;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public void setParent(Category parent) {
		this.parent = parent;
	}


	public void setProducts(List<Product> products) {
		this.products = products;
	}


	public void setAttributes(List<Attribute> attributes) {
		this.attributes = attributes;
	}
}
