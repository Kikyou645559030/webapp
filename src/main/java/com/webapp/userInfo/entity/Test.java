package com.webapp.userInfo.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.webapp.commons.IdEntity;

@Entity
@Table(name = "i_test")
public class Test  extends IdEntity{
	
	private String test;
	private String testName;

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}
}
