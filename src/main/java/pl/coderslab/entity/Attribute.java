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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="attributes")
public class Attribute {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	private String name;
	
	@NotNull
	private String unit;
	
	

	@OneToMany(mappedBy="attribute", cascade=CascadeType.ALL)
	private List<ProductAttributeValue> productAttributeValues = new ArrayList<>();
	
	@ManyToMany(mappedBy="attributes", fetch = FetchType.EAGER)
	private List<Category> categories = new ArrayList<>();
	
	//---------------------------------------------------------------------------------

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public List<ProductAttributeValue> getProductAttributeValues() {
		return productAttributeValues;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setProductAttributeValues(List<ProductAttributeValue> productAttributeValues) {
		this.productAttributeValues = productAttributeValues;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}
	
	
	

}
