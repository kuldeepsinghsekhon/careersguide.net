package net.careersguide.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
@Entity
public class Test {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String description;
	@OneToMany(mappedBy="test1")
	private List<Module>modules;
	@ManyToOne
	@JoinColumn(name="employer_id")
	private User employer;
	
	@OneToMany(mappedBy="test",cascade=CascadeType.REMOVE)
	private List<Question>questions;
	@OneToMany(mappedBy="exam",cascade=CascadeType.REMOVE)
private List<Apply> applications;
	public Integer getId() {
		return id;
	}



	public List<Apply> getApplications() {
		return applications;
	}

	public void setApplications(List<Apply> applications) {
		this.applications = applications;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Module> getModules() {
		return modules;
	}

	public void setModules(List<Module> modules) {
		this.modules = modules;
	}

	public User getEmployer() {
		return employer;
	}

	public void setEmployer(User employer) {
		this.employer = employer;
	}

	public List<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}
	
	
}
