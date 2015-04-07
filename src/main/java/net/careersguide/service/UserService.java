package net.careersguide.service;

import java.util.List;

import net.careersguide.entity.User;
import net.careersguide.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	
	public List<User> findAll(){
		return userRepository.findAll();
		
	}

	public User findOneUser(int id) {
		
		return userRepository.findOne(id);
	}

}
