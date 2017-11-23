package pl.coderslab.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="carts")
public class Cart {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	
	@NotNull
	@NotBlank
	private String name;
	
	private Date created;
	private Date saved; //when user prints cart
	
	@OneToMany(mappedBy="cart")
	private List<CartItem> cartItems;
	
	////////////////////////////////////////////
	
	
	public long getId() {
		return id;
	}
	public List<CartItem> getCartItems() {
		return cartItems;
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
	public void setId(long id) {
		this.id = id;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCreated() {
		Date creationDate=new Date();
		this.created = creationDate;
	}
	public void setSaved(Date saved) {
		this.saved = saved;
	}
	
	
	


	
	
	

}
