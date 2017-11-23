package pl.coderslab.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="cartItems")
public class CartItem {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@NotBlank
	private String name;
	
	private Date created;
	private Date saved; //when user prints cart
	
	@ManyToOne
	private Product product;
	
	@ManyToOne
	private Cart cart;
	
	//---------------------------------

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public Date getCreated() {
		return created;
	}

	public Date getSaved() {
		return saved;
	}

	public Product getProduct() {
		return product;
	}

	public Cart getCart() {
		return cart;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public void setSaved(Date saved) {
		this.saved = saved;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	
	
	
	


	
	
	

}
