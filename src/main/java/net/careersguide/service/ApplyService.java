package net.careersguide.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import net.careersguide.entity.Apply;
import net.careersguide.entity.Job;
import net.careersguide.entity.Test;
import net.careersguide.entity.User;
import net.careersguide.repository.ApplyRepository;
import net.careersguide.repository.JobRepository;

@Service
public class ApplyService {
	@Autowired
	private ApplyRepository applyRepository;
	@Autowired
	private JobService jobService;
	@Autowired
	private TestService testService;
	@Autowired
	private UserService userService;
	
	@PreAuthorize("(#user).email!=authentication.name or hasRole('ROLE_USER')")
	public void doApply(int id, @P("user") User user) {
		Apply apply = new Apply();
		Job job = jobService.findOneJob(id);
		apply.setJob(job);
		apply.setCandidate(user);
		applyRepository.save(apply);

	}

	public List<Apply> findByCandidate(User user) {
		return applyRepository.findByCandidate(user);
	}

	public List<Apply> findById(int id) {
		Job job = jobService.findOneJob(id);

		return applyRepository.findByJob(job);
	}

	public boolean findByJobAndCandidate(int id, User user) {
		Job job = jobService.findOneJob(id);
		return applyRepository.findByJobAndCandidate(job,user)==null;
	}

	

	public void setExam(Integer id, Integer testid,Integer userid) {
		Test test= testService.findOneTest(testid);
		User user =userService.findUser(userid);
		Job job = jobService.findOneJob(id);
		Apply response=applyRepository.findByJobAndCandidate(job,user);
		response.setExam(test);
		applyRepository.save(response);
	}

	public Apply findByTestAndCandidate(Test test,
			User user) {
		
		return applyRepository.findByExamAndCandidate(test, user);
	}

}
