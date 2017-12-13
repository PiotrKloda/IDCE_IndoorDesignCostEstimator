package pl.coderslab.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "projectsProducts")
public class ProjectProducts {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@NotNull
	@NotBlank
	private String name;

	private Date created;
	private Date saved;

	@ManyToOne
	private Product product;

	@ManyToOne
	private Project project;

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

	public Project getProject() {
		return project;
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

	public void setProject(Project project) {
		this.project = project;
	}

	
	
	
	
	
}
