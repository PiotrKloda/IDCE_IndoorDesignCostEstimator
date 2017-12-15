package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.coderslab.entity.ProjectProducts;


@Repository
public interface ProjectProductsRepository extends JpaRepository<ProjectProducts, Long>{
	

}