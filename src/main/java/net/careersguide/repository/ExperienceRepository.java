package net.careersguide.repository;

import java.util.List;

import net.careersguide.entity.Experience;
import net.careersguide.entity.Resume;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ExperienceRepository extends JpaRepository<Experience, Integer> {

	List<Experience> findByResume(Resume resume);

}
