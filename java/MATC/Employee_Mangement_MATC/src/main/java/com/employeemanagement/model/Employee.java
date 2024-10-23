package com.employeemanagement.model;

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
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.employeemanagement.customdatatypes.Designation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "employee")
public class Employee {

	@Id
	@GeneratedValue(generator = "uuid2")
	@GenericGenerator(name = "uuid2", strategy = "uuid2")
	private String id;
	
	@Column(unique = true , nullable = false)
	private String number;
	
	@Column(unique = true)
	private String email;
	
	@Enumerated(EnumType.STRING)
	private Designation designation;
	
	private LocalDate joiningDate;
	
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Person person;
    
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "employee_id" , referencedColumnName = "id")
    private List<Address> address;
	
	private LocalDateTime createdDate = LocalDateTime.now();
	
	private LocalDateTime updatedDate;
    
	private String createdBy = "system";
	
}
