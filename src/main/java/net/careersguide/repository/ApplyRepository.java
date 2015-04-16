package net.careersguide.repository;

import java.util.List;

import net.careersguide.entity.Apply;
import net.careersguide.entity.Job;
import net.careersguide.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ApplyRepository extends JpaRepository<Apply, Integer> {

	List<Apply> findByCandidate(User user);

	

	List<Apply> findByJob(Job job);

	

}
