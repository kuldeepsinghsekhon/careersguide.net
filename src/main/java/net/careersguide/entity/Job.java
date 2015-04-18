package net.careersguide.entity;

import java.util.Date;



import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Job {
	@Id
	@GeneratedValue
	private Integer id;
	private String title;
	private String description;
	private String employerIndustry;
	private String functionalArea;
	public String getFunctionalArea() {
		return functionalArea;
	}
	public void setFunctionalArea(String functionalArea) {
		this.functionalArea = functionalArea;
	}


	@ManyToOne
	@JoinColumn(name="user_id")
	private User corporate;
	
	@OneToMany(mappedBy="job")
	private List<Apply>applies;
	
	public List<Apply> getApplies() {
		return applies;
	}
	public void setApplies(List<Apply> applies) {
		this.applies = applies;
	}
	
	
	private String category;
	@Column(name="publish_date")
	private Date publishDate;
	
	private String country;
	private String state;
	private String city;
	private String skills;
	private String qualification;
	@Column(name="min_experience")
	private Integer experienceMin;
	@Column(name="max_experience")
	private Integer experienceMax;
	private Integer salary;
	@Column(name="min_age")
	private Integer ageMin;
	@Column(name="max_age")
	private Integer ageMax;
	@Column(name="last_date")
	private Date lastDate;
	@Column(name="interview_date")
	private Date interviewDate;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public User getCorporate() {
		return corporate;
	}
	public void setCorporate(User corporate) {
		this.corporate = corporate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getEmployerIndustry() {
		return employerIndustry;
	}
	public void setEmployerIndustry(String employerIndustry) {
		this.employerIndustry = employerIndustry;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public Integer getExperienceMin() {
		return experienceMin;
	}
	public void setExperienceMin(Integer experienceMin) {
		this.experienceMin = experienceMin;
	}
	public Integer getExperienceMax() {
		return experienceMax;
	}
	public void setExperienceMax(Integer experienceMax) {
		this.experienceMax = experienceMax;
	}
	public Integer getSalary() {
		return salary;
	}
	public void setSalary(Integer salary) {
		this.salary = salary;
	}
	public Integer getAgeMin() {
		return ageMin;
	}
	public void setAgeMin(Integer ageMin) {
		this.ageMin = ageMin;
	}
	public Integer getAgeMax() {
		return ageMax;
	}
	public void setAgeMax(Integer ageMax) {
		this.ageMax = ageMax;
	}
	public Date getLastDate() {
		return lastDate;
	}
	public void setLastDate(Date lastDate) {
		this.lastDate = lastDate;
	}
	public Date getInterviewDate() {
		return interviewDate;
	}
	public void setInterviewDate(Date interviewDate) {
		this.interviewDate = interviewDate;
	}
	
}
