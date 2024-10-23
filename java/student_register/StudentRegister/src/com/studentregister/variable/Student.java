package com.studentregister.variable;

public class Student {
	Integer registerNo;
	String name;
	Integer age;
	String dob;
	String department;

	public Student(Integer registerNo, String name, Integer age, String dob, String department) {
		super();
		this.registerNo = registerNo;
		this.name = name;
		this.age = age;
		this.dob = dob;
		this.department = department;
	}

	public Student() {
	}

	public Integer getRegisterNo() {
		return registerNo;
	}

	public void setRegisterNo(Integer registerNo) {
		this.registerNo = registerNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	@Override
	public String toString() {
		return "[registerNo=" + registerNo + ", name=" + name + ", age=" + age + ", dob=" + dob
				+ ", department=" + department + "]";
	}

}
