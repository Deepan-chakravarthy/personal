package com.employeemanagement.dto;

import java.time.LocalDate;

import com.employeemanagement.customdatatypes.Gender;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PersonRequest {

	private String name;

	private Integer age;

	private LocalDate dob;
	
	private Gender gender;
	
	private String mobile;

	private String qualification;
}
