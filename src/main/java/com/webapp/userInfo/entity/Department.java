package com.webapp.userInfo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="i_department")
public class Department {

	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name="system-uuid",strategy="uuid")
	private String id;
	private String deptName;
	
	@OneToOne
	@JoinColumn(name = "dept_id")
	private Department department;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	
	
	
}
