package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import pl.coderslab.entity.Category;


@Repository
public interface CategoryRepository extends JpaRepository<Category, Long>{
	
	@Query(value="SELECT * FROM categories WHERE parent_id IS NULL", nativeQuery = true)
	List <Category> findByParent_idNull();
	

}
