package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.coderslab.entity.ProductAttributeValue;


@Repository
public interface ProductAttributeValueRepository extends JpaRepository<ProductAttributeValue, Long>{

}
