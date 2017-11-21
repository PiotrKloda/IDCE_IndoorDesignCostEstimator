package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.coderslab.entity.Attribute;


@Repository
public interface AttributeRepository extends JpaRepository<Attribute, Long>{

}
