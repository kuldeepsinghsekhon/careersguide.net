package net.careersguide.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.Size;

import net.careersguide.annotations.UniqueUsername;
@Entity(name="app_user")
public class User {
	@Id
	@GeneratedValue
	private Integer id;
	
	private String token;
	private String PasswordResetToken;
	

	public String getPasswordResetToken() {
		return PasswordResetToken;
	}

	public void setPasswordResetToken(String passwordResetToken) {
		PasswordResetToken = passwordResetToken;
	}

	@Size(min=3, message="Minimum 4 Character Required")
	private String firstName;

	    private String lastName;
	    @Size(min=4, message="Enter a valid Email")
	    @Column(name="name",unique=true)
	    @UniqueUsername(message="Such username Already Exists")
	    private String email;
	    @Size(min=4, message="Minimum 4 Character required")
	    private String password;
	    @OneToMany(mappedBy="corporate",cascade=CascadeType.REMOVE)
	    private List<Job>jobs;
	    
	    @OneToOne(mappedBy="user",cascade=CascadeType.REMOVE)
	    private Resume resume;
	    @OneToMany(mappedBy="employer",cascade=CascadeType.REMOVE)
	    private List<Test>tests;
	    @OneToMany(mappedBy="candidate",cascade=CascadeType.REMOVE)
	    private List<Apply>applies;
	    @OneToMany(mappedBy="examEmployer",cascade=CascadeType.REMOVE)
	    private List<CenterCode> centerCode;
	    private Date prtExpiryDate;
	    public Date getPrtExpiryDate() {
			return prtExpiryDate;
		}

		public void setPrtExpiryDate(Date prtExpiryDate) {
			this.prtExpiryDate = prtExpiryDate;
		}

		public List<Apply> getApplies() {
			return applies;
		}

		public void setApplies(List<Apply> applies) {
			this.applies = applies;
		}

		public List<Test> getTests() {
			return tests;
		}

		public void setTests(List<Test> tests) {
			this.tests = tests;
		}

		public List<Job> getJobs() {
			return jobs;
		}

		public void setJobs(List<Job> jobs) {
			this.jobs = jobs;
		}

		public Resume getResume() {
			return resume;
		}

		public void setResume(Resume resume) {
			this.resume = resume;
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

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public boolean isEnabled() {
			return enabled;
		}

		public void setEnabled(boolean enabled) {
			this.enabled = enabled;
		}

		
		public List<Role> getRoles() {
			return roles;
		}

		public void setRoles(List<Role> roles) {
			this.roles = roles;
		}

		private boolean enabled;

	    private Date tokenExpiryDate;
	public Date getTokenExpiryDate() {
			return tokenExpiryDate;
		}

		public void setTokenExpiryDate(Date tokenExpiryDate) {
			this.tokenExpiryDate = tokenExpiryDate;
		}

	@ManyToMany
	@JoinTable
	private List<Role>roles;
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	

}
