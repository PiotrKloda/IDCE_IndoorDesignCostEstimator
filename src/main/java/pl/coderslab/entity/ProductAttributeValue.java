package pl.coderslab.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="prodAttrValues")
public class ProductAttributeValue {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	public String value;

	public String unit;
	
	@ManyToOne
	private Product product;
	
	@ManyToOne 
	private Attribute attribute;
	
	
	//----------------------------------------------------

	public long getId() {
		return id;
	}

	public String getValue() {
		return value;
	}

	public String getUnit() {
		return unit;
	}

	public Product getProduct() {
		return product;
	}

	public Attribute getAttribute() {
		return attribute;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public void setAttribute(Attribute attribute) {
		this.attribute = attribute;
	}

	
}
