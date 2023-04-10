package com.employeemanagement.dto;

import com.employeemanagement.customdatatypes.AddressType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AddressRequest {

	private AddressType type;
	
    private String doorNumber;
	
	private String street;
	
	private String district;
	
	private String state;
	
	private Integer pinCode;
}
