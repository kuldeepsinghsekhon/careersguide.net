package net.careersguide.entity;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Resume {
	@Id
	@GeneratedValue
	private Integer id;

	private String firstName;

    private String lastName;
    private String fatherName;
	private String motherName;
	private String address;
	private String state;
	private String city;
	private String landmark;
	private String email;
	private Integer contact;
	@Column(length=1000)
	private String summary;
	private Integer experience;
	@OneToMany(mappedBy="resume")
	private List<Experience>experiences;
	@OneToMany(mappedBy="resume",fetch=FetchType.EAGER)
	private List<Education>education;
	@OneToMany(mappedBy="resume")
	private List<Skill>skills;
	
	private String currentCompany;
	private Integer currentSalary;
	
	private String CurrentProfile;
	private Date updatedate;
	@Column(length=1000)
	private String interests;
	@OneToOne
	@JoinColumn(name="user_id")
	private User user;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getContact() {
		return contact;
	}
	public void setContact(Integer contact) {
		this.contact = contact;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public Integer getExperience() {
		return experience;
	}
	public void setExperience(Integer experience) {
		this.experience = experience;
	}
	public List<Experience> getExperiences() {
		return experiences;
	}
	public void setExperiences(List<Experience> experiences) {
		this.experiences = experiences;
	}
	public List<Education> getEducation() {
		return education;
	}
	public void setEducation(List<Education> education) {
		this.education = education;
	}
	public List<Skill> getSkills() {
		return skills;
	}
	public void setSkills(List<Skill> skills) {
		this.skills = skills;
	}
	public String getCurrentCompany() {
		return currentCompany;
	}
	public void setCurrentCompany(String currentCompany) {
		this.currentCompany = currentCompany;
	}
	public Integer getCurrentSalary() {
		return currentSalary;
	}
	public void setCurrentSalary(Integer currentSalary) {
		this.currentSalary = currentSalary;
	}
	public String getCurrentProfile() {
		return CurrentProfile;
	}
	public void setCurrentProfile(String currentProfile) {
		CurrentProfile = currentProfile;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public String getInterests() {
		return interests;
	}
	public void setInterests(String interests) {
		this.interests = interests;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}