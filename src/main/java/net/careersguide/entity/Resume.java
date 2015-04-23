package net.careersguide.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
	@OneToOne
	@JoinColumn(name="user_id")
	private User user;
	
   



	public Integer getId() {
		return id;
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
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



	public String getCurrentCompany() {
		return currentCompany;
	}



	public void setCurrentCompany(String currentCompany) {
		this.currentCompany = currentCompany;
	}



	private String summary;
    
	private Integer experience;
	
	
	
	private String currentCompany;
	
	 
	

}
