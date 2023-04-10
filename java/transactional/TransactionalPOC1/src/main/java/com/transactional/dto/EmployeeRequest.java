package com.transactional.dto;

import com.transactional.model.Address;
import com.transactional.model.Company;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeRequest {

    private String number;
	
	private String name;
	
	private String designation;
	
	private Company company;
	
	private Address address;
	
}
