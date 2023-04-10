package com.employeemanagement.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.employeemanagement.customdatatypes.Gender;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "person")
public class Person {

	@Id
	@GeneratedValue(generator = "uuid2")
	@GenericGenerator(name = "uuid2", strategy = "uuid2")
	@JsonIgnore
	private String id;

	private String name;

	private Integer age;

	private LocalDate dob;

	@Enumerated(EnumType.STRING)
	private Gender gender;

	@Column(unique = true)
	private String mobile;

	private String qualification;
}
