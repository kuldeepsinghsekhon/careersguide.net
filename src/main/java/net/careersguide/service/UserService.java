package net.careersguide.service;



import java.util.List;

import net.careersguide.entity.Resume;
import net.careersguide.entity.User;
import net.careersguide.repository.ResumeRepository;
import net.careersguide.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private ResumeRepository resumeRepository;
	
	public List<User> findAll(){
		return userRepository.findAll();
		
	}

	public User findOneUser(int id) {
		
		return userRepository.findOne(id);
	}

	public void removeUser(int id) {
		
		userRepository.delete(id);
	}

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
		
			
		resumeRepository.save(candidateResume);
				
	}

	public Resume findUserResume(String name) {
		User user= userRepository.findByEmail(name);
		return resumeRepository.findByUser(user);
	}

	public void saveResume(User user) {
		Resume resume=new Resume();
		resume.setUser(user);
		resumeRepository.save(resume);
	}

	public User userByName(String name) {
		return userRepository.findByEmail(name);
		
	}

	

}
