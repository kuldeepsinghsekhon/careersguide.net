package net.careersguide.repository;

import java.util.List;

import net.careersguide.entity.Job;
import net.careersguide.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface JobRepository extends JpaRepository<Job, Integer> {

	List<Job> findByCorporate(User user);

	Job findById(Integer id);

	List<Job> findByTitle(String seachValue);
	 List<Job> findByTitleOrQualification(String seachValue, String mca);
	



}
