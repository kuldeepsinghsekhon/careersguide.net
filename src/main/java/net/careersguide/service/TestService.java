package net.careersguide.service;

import java.util.List;

import net.careersguide.entity.Test;
import net.careersguide.repository.TestRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {
	@Autowired
	private TestRepository testRepository;
	
	public List<Test> findAll(){
		return testRepository.findAll();
	}

}
