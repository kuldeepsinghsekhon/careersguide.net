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
		
		resume.setUser(user);
		
		resumeRepository.save(resume);
				
	}

	public Resume findUserResume(String name) {
		User user= userRepository.findByEmail(name);
		return resumeRepository.findByUser(user);
	}

	public void saveResume(Resume resume,User user) {
		resume.setUser(user);
		resumeRepository.save(resume);
	}

	public User userByName(String name) {
		return userRepository.findByEmail(name);
		
	}

}
