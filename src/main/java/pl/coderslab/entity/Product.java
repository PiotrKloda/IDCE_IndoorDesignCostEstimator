package pl.coderslab.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="products")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	private String name;

	private String description;
	
	@NotNull
	private Double price;
	
	private String producent;
	
	
	private String linkToPhoto;
	
	@ManyToOne
	private Category category;
	
	@OneToMany
	(mappedBy="product", cascade=CascadeType.ALL)
	private List<ProductAttributeValue> productAttributeValues = new ArrayList<>();
	
	//---------------------------------------------------------------------------------
	

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public Double getPrice() {
		return price;
	}

	public String getProducent() {
		return producent;
	}

	public String getLinkToPhoto() {
		return linkToPhoto;
	}

	public Category getCategory() {
		return category;
	}

	public List<ProductAttributeValue> getProductAttributeValues() {
		return productAttributeValues;
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

	public void setPrice(Double price) {
		this.price = price;
	}

	public void setProducent(String producent) {
		this.producent = producent;
	}

	public void setLinkToPhoto(String linkToPhoto) {
		this.linkToPhoto = linkToPhoto;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public void setProductAttributeValues(List<ProductAttributeValue> productAttributeValues) {
		this.productAttributeValues = productAttributeValues;
	}
	
	
}
