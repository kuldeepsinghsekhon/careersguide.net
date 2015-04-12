package net.careersguide.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
@Entity(name="app_user")
public class User {
	@Id
	@GeneratedValue
	private Integer id;
	
	
	private String firstName;

	    private String lastName;
	    @Column(name="name")
	    private String email;
	    
	    private String password;
	    @OneToMany
	    private List<Job>jobs;

	    public List<Job> getJobs() {
			return jobs;
		}

		public void setJobs(List<Job> jobs) {
			this.jobs = jobs;
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

		public boolean isTokenExpired() {
			return tokenExpired;
		}

		public void setTokenExpired(boolean tokenExpired) {
			this.tokenExpired = tokenExpired;
		}

		public List<Role> getRoles() {
			return roles;
		}

		public void setRoles(List<Role> roles) {
			this.roles = roles;
		}

		private boolean enabled;

	    private boolean tokenExpired;
	@ManyToMany
	@JoinTable
	private List<Role>roles;
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

}
