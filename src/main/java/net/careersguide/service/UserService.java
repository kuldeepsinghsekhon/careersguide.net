package net.careersguide.service;



import java.util.List;

import net.careersguide.entity.User;
import net.careersguide.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	
	
	public List<User> findAll(){
		return userRepository.findAll();
		
	}
	@PreAuthorize("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN') ")
	public User findOneUser(int id) {
		
		return userRepository.findOne(id);
	}
public User findUser(int id) {
		
		return userRepository.findOne(id);
	}
	public void removeUser(int id) {
		
		userRepository.delete(id);
	}
	public User userByName(String name) {
		return userRepository.findByEmail(name);
		
	}
		
}
