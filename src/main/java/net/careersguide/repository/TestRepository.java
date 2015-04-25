package net.careersguide.repository;




import java.util.List;

import net.careersguide.entity.Question;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TestRepository extends JpaRepository<Test, Integer> {

	List<Test> findAllByEmployer(User user);

	Test findById(Integer id);

	



	

	

}
