package net.careersguide.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Question {

	@Id
	@GeneratedValue
	private Integer id;
	
	
	private String statement;
	private String solution1;
	private String solution2;
	private String solution3;
	private String solution4;
	private String solution5;
	private String rightsolution;
	@ManyToOne
	@JoinColumn(name="test_id")
	private Test test;
	@OneToMany(mappedBy="question")
	private List<Answers> answers;
	private Float marks;
	private Float negativemarks;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStatement() {
		return statement;
	}
	public void setStatement(String statement) {
		this.statement = statement;
	}
	public String getSolution1() {
		return solution1;
	}
	public void setSolution1(String solution1) {
		this.solution1 = solution1;
	}
	public String getSolution2() {
		return solution2;
	}
	public void setSolution2(String solution2) {
		this.solution2 = solution2;
	}
	public String getSolution3() {
		return solution3;
	}
	public void setSolution3(String solution3) {
		this.solution3 = solution3;
	}
	public String getSolution4() {
		return solution4;
	}
	public void setSolution4(String solution4) {
		this.solution4 = solution4;
	}
	public String getSolution5() {
		return solution5;
	}
	public void setSolution5(String solution5) {
		this.solution5 = solution5;
	}
	public String getRightsolution() {
		return rightsolution;
	}
	public void setRightsolution(String rightsolution) {
		this.rightsolution = rightsolution;
	}
	public Test getTest() {
		return test;
	}
	public void setTest(Test test) {
		this.test = test;
	}
	public List<Answers> getAnswers() {
		return answers;
	}
	public void setAnswers(List<Answers> answers) {
		this.answers = answers;
	}
	public Float getMarks() {
		return marks;
	}
	public void setMarks(Float marks) {
		this.marks = marks;
	}
	public Float getNegativemarks() {
		return negativemarks;
	}
	public void setNegativemarks(Float negativemarks) {
		this.negativemarks = negativemarks;
	}
	
}
