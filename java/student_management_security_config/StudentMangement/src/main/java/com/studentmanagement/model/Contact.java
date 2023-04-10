package com.studentmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Contact {
  
	@Id
	@GeneratedValue(generator = "uuid2")
	@GenericGenerator(name = "uuid2", strategy = "uuid2")
	private String id;
	
	@Column(name = "email", unique = true)
	private String email;

	@Column(name = "mobile", unique = true)
	private Long mobile;
	
	@Column(name = "landline", unique = true)
	private Long landline;
}
