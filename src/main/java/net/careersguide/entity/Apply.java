package net.careersguide.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;



@Entity
public class Apply {

	@Id
	@GeneratedValue
	private Integer id;

	@ManyToOne
	@JoinColumn(name = "job_id")
	//@UniqueJobRequest(message="You have already applied")
	private Job job;
	@ManyToOne
	@JoinColumn(name = "applicant_id")
	private User candidate;
	@ManyToOne
	@JoinColumn(name = "exam_id")
	private Test exam;
	@ManyToOne
	@JoinColumn(name = "centerCode_id")
	private CenterCode centerCode;

	public Test getExam() {
		return exam;
	}

	public void setExam(Test exam) {
		this.exam = exam;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public User getCandidate() {
		return candidate;
	}

	public void setCandidate(User candidate) {
		this.candidate = candidate;
	}

}
