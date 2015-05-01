package net.careersguide.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
@Entity
public class CenterCode {
@Id
@GeneratedValue
private int id;
private String code;
@ManyToOne
@JoinColumn(name="employer_id")
private User examEmployer;
@OneToMany(mappedBy="centerCode")
private List<Apply>applications;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public User getExamEmployer() {
	return examEmployer;
}
public void setExamEmployer(User examEmployer) {
	this.examEmployer = examEmployer;
}
}
