package net.careersguide.repository;

import java.util.List;

import net.careersguide.entity.Apply;
import net.careersguide.entity.Job;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ApplyRepository extends JpaRepository<Apply, Integer> {

	List<Apply> findByCandidate(User user);

	

	List<Apply> findByJob(Job job);



	Apply findByJobAndCandidate(Job job, User user);



	Apply findByExamAndCandidate(Test test, User user);



	List<Apply> findByExam(Test exam);

	

}
