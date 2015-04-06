package net.careersguide.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import net.careersguide.entity.Role;
import net.careersguide.entity.User;
import net.careersguide.repository.RoleRepository;
import net.careersguide.repository.UserRepository;
import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Transactional
@Service
public class InitDbService {
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@PostConstruct
	public void init(){
		Role roleUser =new Role();
		roleUser.setName("ROLE_USER");
		roleRepository.save(roleUser);
		

		Role roleAdmin =new Role();
		roleUser.setName("ROLE_ADMIN");
		roleRepository.save(roleAdmin);
		
		User userAdmin =new User();
		
		userAdmin.setEmail("adminMail");
		userAdmin.setFirstName("Admin");
		userAdmin.setLastName("User");
		userAdmin.setPassword("adminspassword");
		List<Role> roles =new ArrayList<Role>();
		roles.add(roleAdmin);
		roles.add(roleUser);
		userAdmin.setRoles(roles);
		userRepository.save(userAdmin);
	}

}
