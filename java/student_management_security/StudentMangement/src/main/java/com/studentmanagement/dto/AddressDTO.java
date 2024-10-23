package com.studentmanagement.dto;

import lombok.Data;

@Data
public class AddressDTO {
    
	private String doorNumber;
	
	private String street;
	
	private String district;
	
	private String state;
	
	private Integer pinCode;
}
