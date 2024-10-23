package com.employeemanagement.security;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RegisterRequest {

	private String employeeNumber;

	private String name;

	private String password;
	
	@Enumerated(EnumType.STRING)
	private Role role;
	
}
