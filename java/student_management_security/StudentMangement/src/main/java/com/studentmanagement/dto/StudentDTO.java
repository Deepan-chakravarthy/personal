package com.studentmanagement.dto;

import java.time.LocalDate;
import java.util.List;

import com.studentmanagement.customdatatype.Department;
import com.studentmanagement.customdatatype.Gender;
import com.studentmanagement.model.Address;
import com.studentmanagement.model.Contact;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentDTO {

	private Integer registerNo;

	private String firstName;

	private String lastName;

	private LocalDate dob;
	
	private Integer age;

	private Gender gender;

	private Department department;
	
	private Contact contact;

	private List<Address> address;
}
