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
@Table(name="projects")
public class Project {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@NotBlank
	private String name;
	
	private Date created;
	private Date saved; 
	
	@OneToMany(mappedBy="project")
	private List<ProjectProducts> projectProducts;

	
	
	
	
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

	public List<ProjectProducts> getProjectProducts() {
		return projectProducts;
	}

	public void setId(long id) {
		this.id = id;
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

	public void setProjectProducts(List<ProjectProducts> projectProducts) {
		this.projectProducts = projectProducts;
	}
	
	
	
	

}
