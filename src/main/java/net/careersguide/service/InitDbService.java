package net.careersguide.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import net.careersguide.entity.Module;
import net.careersguide.entity.Role;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;
import net.careersguide.repository.ModuleRepository;
import net.careersguide.repository.RoleRepository;
import net.careersguide.repository.TestRepository;
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
	@Autowired
	private TestRepository testRepository;
	@Autowired
	private ModuleRepository moduleRepository;
	@PostConstruct
	public void init(){
		Role roleUser =new Role();
		roleUser.setName("ROLE_USER");
		roleRepository.save(roleUser);
		

		Role roleAdmin =new Role();
		roleAdmin.setName("ROLE_ADMIN");
		roleRepository.save(roleAdmin);
		
		Role roleCorp =new Role();
		roleCorp.setName("ROLE_CORP");
		roleRepository.save(roleCorp);
		
		User userAdmin =new User();
		
		userAdmin.setEmail("adminMail");
		userAdmin.setFirstName("Admin");
		userAdmin.setLastName("User");
		userAdmin.setPassword("adminspassword");
		List<Role> roles =new ArrayList<Role>();
		roles.add(roleAdmin);
		
		userAdmin.setRoles(roles);
		userAdmin.setEnabled(true);
		userRepository.save(userAdmin);

		User userCorp =new User();
		
		userCorp.setEmail("corpMail");
		userCorp.setFirstName("corp");
		userCorp.setLastName("corp");
		userCorp.setPassword("corpspassword");
		List<Role> rolesCorp =new ArrayList<Role>();
		roles.add(roleCorp);
		userCorp.setRoles(rolesCorp);
		userCorp.setEnabled(true);
		userRepository.save(userCorp);
		
		Test test =new Test();
		test.setEmployer(userCorp);
		test.setName("SampleTest");
		testRepository.save(test);
		
		Module module1=new Module();
		module1.setName("Computer Knowledge");
		module1.setTest(test);
		moduleRepository.save(module1);
		
		Module module2=new Module();
		module2.setName("General Knowledge");
		module2.setTest(test);
		moduleRepository.save(module2);
		
		
	}

}
