package net.careersguide.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;





import net.careersguide.entity.Question;
import net.careersguide.entity.Resume;
import net.careersguide.entity.Role;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;
import net.careersguide.repository.ModuleRepository;
import net.careersguide.repository.QuestionRepository;
import net.careersguide.repository.ResumeRepository;
import net.careersguide.repository.RoleRepository;
import net.careersguide.repository.TestRepository;
import net.careersguide.repository.UserRepository;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	@Autowired
	private QuestionRepository questionRepository;
	@Autowired
	private ResumeRepository resumeRepository;
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
		
		userAdmin.setEmail("admin@local.com");
		userAdmin.setFirstName("Admin");
		userAdmin.setLastName("User");
		BCryptPasswordEncoder encoder =new BCryptPasswordEncoder();
		
		userAdmin.setPassword(encoder.encode("admin"));
		List<Role> roles =new ArrayList<Role>();
		roles.add(roleAdmin);
		
		userAdmin.setRoles(roles);
		userAdmin.setEnabled(true);
		userRepository.save(userAdmin);
		Resume profileAdmin=new Resume();
		profileAdmin.setUser(userAdmin);
		profileAdmin.setFirstName("Admin");
		profileAdmin.setLastName("User");
		resumeRepository.save(profileAdmin);

		User userCorp =new User();
		
		userCorp.setEmail("corp@local.com");
		userCorp.setFirstName("corp");
		userCorp.setLastName("corp1");
		
		
		userCorp.setPassword(encoder.encode("corp1"));
		List<Role> rolesCorp =new ArrayList<Role>();
		rolesCorp.add(roleCorp);
		userCorp.setRoles(rolesCorp);
		userCorp.setEnabled(true);
		userRepository.save(userCorp);
		Resume profileCorp=new Resume();
		 profileCorp.setUser(userCorp);
		 profileCorp.setFirstName("ABC Company");
		resumeRepository.save( profileCorp);

		Test test =new Test();
		test.setEmployer(userCorp);
		test.setName("SampleTest");
		testRepository.save(test);
		
		
		
		Question question1 =new Question();
		question1.setStatement("What is the name of Capital of India ?");
		question1.setSolution1("Punjab");
		question1.setSolution2("Delhi");
		question1.setSolution3("Bombay");
		question1.setSolution4("Calcuta");
		question1.setRightsolution("A");
		question1.setMarks(1F);
		question1.setTest(test);
		questionRepository.save(question1);
		
		Question question2 =new Question();
		question2.setStatement("What is the name of Developer of This site ?");
		question2.setSolution1("Kuldeep");
		question2.setSolution2("lucky");
		question2.setSolution3("sekhon");
		question2.setSolution4("singh");
		question2.setRightsolution("A");
		question2.setMarks(2F);
		question2.setTest(test);
		questionRepository.save(question2);
		
		
User usercandidate =new User();
		
		usercandidate.setEmail("candidate@local.com");
		usercandidate.setFirstName("candidate");
		usercandidate.setLastName("User");
		//BCryptPasswordEncoder encoder =new BCryptPasswordEncoder();
		
		usercandidate.setPassword(encoder.encode("candidate"));
		List<Role> candidateroles =new ArrayList<Role>();
		candidateroles.add(roleUser);
		
		usercandidate.setRoles(candidateroles);
		usercandidate.setEnabled(true);
		userRepository.save(usercandidate);
		Resume resume=new Resume();
		resume.setUser(usercandidate);
		resumeRepository.save(resume);
		
	}

}
