package net.careersguide.service;

import java.net.Authenticator;
import java.util.List;

import net.careersguide.entity.Question;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;
import net.careersguide.repository.QuestionRepository;
import net.careersguide.repository.TestRepository;
import net.careersguide.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

@Service
public class TestService {
	@Autowired
	private TestRepository testRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private QuestionRepository questionRepository;
	public List<Test> findAllByUser(String name){
		User user=userRepository.findByEmail(name);
		return testRepository.findAllByEmployer(user);
	}

	public Test findOneTest(int id) {
		Test test= testRepository.findOne(id);
		List<Question> questions= questionRepository.findByTest(test);
		test.setQuestions(questions);
		return test;
	}

	public void createTest(Test test, String name) {
		User user=userRepository.findByEmail(name);
		test.setEmployer(user);
		testRepository.save(test);
		
		
	}

	public void createQuestion(Question question, String name, int id) {
		User user=userRepository.findByEmail(name);
		Test test= testRepository.findById(id);
		question.setTest(test);
		questionRepository.save(question);
		
	}
	@PreAuthorize("#test.employer.email==authentication.name or hasRole('ROLE_ADMIN')")
	public void deleteTest(@P("test")Test test) {
		
		testRepository.delete(test);
	}

	

}
