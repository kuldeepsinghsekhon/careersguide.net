package net.careersguide.service;

import java.util.List;

import net.careersguide.entity.Answers;
import net.careersguide.entity.Apply;
import net.careersguide.entity.Question;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;
import net.careersguide.repository.AnswersRepository;
import net.careersguide.repository.QuestionRepository;
import net.careersguide.repository.TestRepository;
import net.careersguide.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

@Service
public class TestService {
	@Autowired
	private TestRepository testRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private UserService userService;
	@Autowired
	private QuestionRepository questionRepository;
	@Autowired
	private ApplyService applyService;
	@Autowired
	private AnswersRepository answersRepository;
	
	public List<Test> findAllByUser(String name){
		User user=userRepository.findByEmail(name);
		return testRepository.findAllByEmployer(user);
	}

	public Test findOneTest(int id) {
		return testRepository.findOne(id);
		
	}

	public void createTest(Test test, String name) {
		User user=userRepository.findByEmail(name);
		test.setEmployer(user);
	testRepository.save(test);
	}
	
	@PreAuthorize("#test.employer.email==authentication.name or hasRole('ROLE_ADMIN')")
	public void deleteTest(@P("test")Test test) {
		testRepository.delete(test);
	}
	
	@PreAuthorize("#test.employer.email==authentication.name or hasRole('ROLE_ADMIN')")
	public List<Question> findQuestions(@P("test")Test test) {
	return questionRepository.findByTest(test,new PageRequest(0, 100));
	}
	//@PreAuthorize("hasRole('ROLE_USER')")
	public List<Question> findPagedQuestions(Test test,int pn) {
	return questionRepository.findByTest(test,new PageRequest(pn-1, 1));
	}
	//@PreAuthorize("hasRole('ROLE_USER')")
	public List<Question> findPaged1Questions(Test test) {
		
	return questionRepository.findByTest(test,new PageRequest(0, 100));
	}
	
	@PreAuthorize("#test.employer.email==authentication.name or hasRole('ROLE_ADMIN')")
	public void addQuestion(Question question,@P("test") Test test) {
		Question question2=new Question();
		question2.setTest(test);
		question2.setStatement(question.getStatement());
		question2.setSolution1(question.getSolution1());
		question2.setSolution2(question.getSolution2());
		question2.setSolution3(question.getSolution3());
		question2.setSolution4(question.getSolution4());
		question2.setRightsolution(question.getRightsolution());
		questionRepository.save(question2);
	}
	@PreAuthorize("#apply.candidate.email==authentication.name or hasRole('ROLE_ADMIN')")
	public void addAnswers(Test test, Question question, User user,@P("apply")Apply apply,String answer_string) {
		
		Answers dbanswer=answersRepository.findByResponseAndQuestion(apply,question);
		if(dbanswer==null){
		Answers answer= new Answers();
		answer.setResponse(apply);
		answer.setQuestion(question);
		answer.setAnswer(answer_string);
		if(answer_string.equalsIgnoreCase(question.getRightsolution())){
			answer.setMarks(question.getMarks());
		}
		answersRepository.save(answer);
		}else{
			dbanswer.setResponse(apply);
			dbanswer.setQuestion(question);
			dbanswer.setAnswer(answer_string);
			if(answer_string.equalsIgnoreCase(question.getRightsolution())){
				dbanswer.setMarks(question.getMarks());
			}
			answersRepository.save(dbanswer);
		}
	

	}

	public Question findOne(int pn) {
		return questionRepository.findOne(pn);
	}
		

}
