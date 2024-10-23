package com.studentmanagement.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

import com.studentmanagement.customdatatype.Department;
import com.studentmanagement.customdatatype.Gender;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Student {

	@Id
	@GeneratedValue(generator = "uuid2")
	@GenericGenerator(name = "uuid2", strategy = "uuid2")
	private String id;

	@Column(name = "register_no", unique = true, nullable = false)
	private Integer registerNo;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "dob")
//	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
//	@JsonSerialize(using = LocalDateSerializer.class)
//	@JsonDeserialize(using = LocalDateDeserializer.class)
	private LocalDate dob;

	@Column(name = "age")
	private Integer age;

	@Enumerated(EnumType.STRING)
	@Column(name = "gender")
	private Gender gender;

	@Enumerated(EnumType.STRING)
	@Column(name = "department")
	private Department department;
	
	@OneToOne(cascade = CascadeType.ALL , fetch = FetchType.EAGER)
	private Contact contact;

	@OneToMany(cascade = CascadeType.ALL , fetch = FetchType.EAGER)
	@JoinColumn(name = "student_id" , referencedColumnName = "id")
	private List<Address> address;

	@Column(name = "created_date")
	private LocalDateTime createdDate = LocalDateTime.now();

	@Column(name = "updatedDate")
	private LocalDateTime updatedDate;

	@Column(name = "created_by")
	private String createdBy = "system";

}
