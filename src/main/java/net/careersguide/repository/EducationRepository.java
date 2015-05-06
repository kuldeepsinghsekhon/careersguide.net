package net.careersguide.repository;

import java.util.List;

import net.careersguide.entity.Education;
import net.careersguide.entity.Resume;

import org.springframework.data.jpa.repository.JpaRepository;

public interface EducationRepository extends JpaRepository<Education, Integer> {

	List<Education> findByResume(Resume resume);

}
