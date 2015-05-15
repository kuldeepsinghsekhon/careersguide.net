package net.careersguide.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



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
	@OneToMany(mappedBy="response")
private List<Answers> answers;
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

	public CenterCode getCenterCode() {
		return centerCode;
	}

	public void setCenterCode(CenterCode centerCode) {
		this.centerCode = centerCode;
	}

	public List<Answers> getAnswers() {
		return answers;
	}

	public void setAnswers(List<Answers> answers) {
		this.answers = answers;
	}

}
