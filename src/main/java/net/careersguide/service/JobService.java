package net.careersguide.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.careersguide.entity.Job;
import net.careersguide.repository.JobRepository;
@Service
public class JobService {
	

@Autowired
private JobRepository jobRepository;

	public void postJob(Job job) {
		jobRepository.save(job);
		
	}

	public List<Job> getJobs() {
		
		return jobRepository.findAll();
		
	}

}
