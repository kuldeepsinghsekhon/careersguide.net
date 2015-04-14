package net.careersguide.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Module {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	@ManyToOne
	@JoinColumn(name="test_id")
	private Test test1;
	public Integer getId() {
		return id;
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
	public Test getTest1() {
		return test1;
	}
	public void setTest1(Test test1) {
		this.test1 = test1;
	}
	

}
