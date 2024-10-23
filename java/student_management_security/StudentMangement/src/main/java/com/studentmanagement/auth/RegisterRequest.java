package com.studentmanagement.auth;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;

import com.studentmanagement.customdatatype.Role;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RegisterRequest {

	private String firstname;

	private String lastname;

	private String email;

	private String password;
	
	@Enumerated(EnumType.STRING)
	private Role role;
}
