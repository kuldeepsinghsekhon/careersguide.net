package net.careersguide.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.careersguide.entity.Job;
import net.careersguide.entity.User;
import net.careersguide.repository.JobRepository;
@Service
public class JobService {
	

@Autowired
private JobRepository jobRepository;
@Autowired
private UserService userService;

	public void postJob(Job job,String name) {
		User user =userService.userByName(name);
		job.setCorporate(user);
		jobRepository.save(job);
		
	}

	public List<Job> getJobs() {
		
		return jobRepository.findAll();
		
	}

	public List<Job> jobsByUser(User user) {

		return  jobRepository.findByCorporate(user);
	}

}
