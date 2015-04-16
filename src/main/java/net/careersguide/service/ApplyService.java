package net.careersguide.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.careersguide.entity.Apply;
import net.careersguide.entity.Job;
import net.careersguide.entity.User;
import net.careersguide.repository.ApplyRepository;
import net.careersguide.repository.JobRepository;
@Service
public class ApplyService {
	@Autowired
	private ApplyRepository applyRepository;
	@Autowired
	private JobRepository jobRepository;

	public void doApply(int id, User user) {
	Apply apply =new Apply();
	Job job=jobRepository.findOne(id);
	apply.setJob(job);
	apply.setCandidate(user);
	applyRepository.save(apply);
	
	}

	public List<Apply> findByCandidate(User user) {
		return applyRepository.findByCandidate(user);
	}

	public List<Apply> findById(int id) {
		Job job=jobRepository.findOne(id);
		
		return applyRepository.findByJob(job);
	}

}
