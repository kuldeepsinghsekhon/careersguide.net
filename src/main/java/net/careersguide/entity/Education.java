package net.careersguide.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Education {
	@Id
	@GeneratedValue
	private Integer id;
	private String courseName;
	private String specialization;
	private String intitution;
	private String passingYear;
	private String marks;
	@ManyToOne
	@JoinColumn(name="resume_id")
	private Resume resume;
	public String getPassingYear() {
		return passingYear;
	}
	public void setPassingYear(String passingYear) {
		this.passingYear = passingYear;
	}
	public String getMarks() {
		return marks;
	}
	public void setMarks(String marks) {
		this.marks = marks;
	}
	public Integer getId() {
		return id;
	}
	public Resume getResume() {
		return resume;
	}
	public void setResume(Resume resume) {
		this.resume = resume;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String getIntitution() {
		return intitution;
	}
	public void setIntitution(String intitution) {
		this.intitution = intitution;
	}
	

}
