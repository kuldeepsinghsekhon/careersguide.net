package net.careersguide.service;

import java.util.Date;
import java.util.List;

import net.careersguide.entity.Education;
import net.careersguide.entity.Experience;
import net.careersguide.entity.Resume;
import net.careersguide.entity.Skill;
import net.careersguide.entity.User;
import net.careersguide.repository.EducationRepository;
import net.careersguide.repository.ExperienceRepository;
import net.careersguide.repository.ResumeRepository;
import net.careersguide.repository.SkillRepository;
import net.careersguide.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

@Service
public class UserDetailService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private ResumeRepository resumeRepository;
	@Autowired
	private ExperienceRepository experienceRepository;
	@Autowired
	private EducationRepository educationRepository;
	@Autowired
	private SkillRepository skillRepository;
	public void updateResume(Resume resume,String name) {
		User user=userRepository.findByEmail(name);
		Resume candidateResume =resumeRepository.findByUser(user);
		candidateResume.setSummary(resume.getSummary());
		candidateResume.setEmail(resume.getEmail());	
		candidateResume.setFirstName(resume.getFirstName());
		candidateResume.setLastName(resume.getLastName());
		candidateResume.setFatherName(resume.getFatherName());
		candidateResume.setAddress(resume.getAddress());
		candidateResume.setState(resume.getState());
		candidateResume.setCity(resume.getCity());
		candidateResume.setInterests(resume.getInterests());
		candidateResume.setCurrentCompany(resume.getCurrentCompany());
		candidateResume.setCurrentProfile(resume.getCurrentProfile());
		candidateResume.setCurrentSalary(resume.getCurrentSalary());
		Date updatedate =new Date();
		candidateResume.setUpdatedate(updatedate);
		resumeRepository.save(candidateResume);
	}

	public void saveEducation(Education education,String name) {
		User user= userRepository.findByEmail(name);
		Resume resume =resumeRepository.findByUser(user);
                education.setResume(resume);
                educationRepository.save(education);
            }

	public Resume findUserResume(String name) {
		User user= userRepository.findByEmail(name);
		Resume resume=resumeRepository.findByUser(user);
		resume.setEducation(educationRepository.findByResume(resume));
		resume.setExperiences(experienceRepository.findByResume(resume));
		resume.setSkills(skillRepository.findByResume(resume));
		return resume;
	}

	public void saveResume(User user) {
		Resume resume=new Resume();
		resume.setUser(user);
		resumeRepository.save(resume);
	}

	

	public void saveExperience(Experience experience,String name) {
		User user =userRepository.findByEmail(name);
		Resume resume =resumeRepository.findByUser(user);
		experience.setResume(resume);
		experienceRepository.save(experience);
	}
	public void saveSkill(Skill skill,String name) {
		User user =userRepository.findByEmail(name);
		Resume resume =resumeRepository.findByUser(user);
		skill.setResume(resume);
		skillRepository.save(skill);
	}

	public List<Education> findEducationByResume(String name) {
		User user =userRepository.findByEmail(name);
		Resume resume =resumeRepository.findByUser(user);
		return educationRepository.findByResume(resume);
	}

	public Object findUserExperiences(String name) {
		User user =userRepository.findByEmail(name);
		Resume resume =resumeRepository.findByUser(user);
		return experienceRepository.findByResume(resume);
	}

	public List<Skill> findUserSkills(String name) {
		User user =userRepository.findByEmail(name);
		Resume resume =resumeRepository.findByUser(user);
		return skillRepository.findByResume(resume);
	}
	@PreAuthorize("hasRole('ROLE_CORP')")
	public Object findByUser(User user) {
		
		Resume resume= resumeRepository.findByUser(user);
		resume.setEducation(educationRepository.findByResume(resume));
		resume.setExperiences(experienceRepository.findByResume(resume));
		resume.setSkills(skillRepository.findByResume(resume));
		return resume;
	}
	


}
