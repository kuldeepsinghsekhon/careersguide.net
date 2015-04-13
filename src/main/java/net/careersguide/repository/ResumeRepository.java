package net.careersguide.repository;

import net.careersguide.entity.Resume;
import net.careersguide.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ResumeRepository extends JpaRepository<Resume, Integer> {

	

	Resume findByUser(User user);



}
