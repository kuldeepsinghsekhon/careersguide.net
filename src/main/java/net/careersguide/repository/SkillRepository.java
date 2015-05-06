package net.careersguide.repository;

import java.util.List;

import net.careersguide.entity.Resume;
import net.careersguide.entity.Skill;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SkillRepository extends JpaRepository<Skill, Integer> {

	List<Skill> findByResume(Resume resume);

}
