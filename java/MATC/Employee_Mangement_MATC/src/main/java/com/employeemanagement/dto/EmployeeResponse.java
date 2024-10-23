package com.employeemanagement.dto;

import java.time.LocalDate;
import java.util.List;

import com.employeemanagement.customdatatypes.Designation;
import com.employeemanagement.model.Address;
import com.employeemanagement.model.Person;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmployeeResponse {

    private String number;
	
    private String email;
	
	private Designation designation;
	
	private LocalDate joiningDate;
	
	private Person person;
	
	private List<Address> address;
}
