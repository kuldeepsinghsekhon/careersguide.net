package net.careersguide.repository;



import java.util.List;

import net.careersguide.entity.Question;
import net.careersguide.entity.Test;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionRepository extends JpaRepository<Question, Integer> {

	List<Question> findByTest(Test test,Pageable pageable);

}
