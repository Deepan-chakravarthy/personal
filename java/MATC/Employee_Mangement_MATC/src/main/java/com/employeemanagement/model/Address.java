package com.employeemanagement.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import org.hibernate.annotations.GenericGenerator;
import com.employeemanagement.customdatatypes.AddressType;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Address {

	@Id
	@GeneratedValue(generator = "uuid2")
	@GenericGenerator(name = "uuid2", strategy = "uuid2")
	@JsonIgnore
	private String id;
	
	@Enumerated(EnumType.STRING)
	private AddressType type;
	
	private String doorNumber;
	
	private String street;
	
	private String district;
	
	private String state;
	
	private Integer pinCode;
}
