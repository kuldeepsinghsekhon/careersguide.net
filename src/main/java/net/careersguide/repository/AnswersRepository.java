package net.careersguide.repository;

import net.careersguide.entity.Answers;
import net.careersguide.entity.Apply;
import net.careersguide.entity.Question;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AnswersRepository extends JpaRepository<Answers, Integer> {

	Answers findByResponseAndQuestion(Apply apply, Question question);

}
