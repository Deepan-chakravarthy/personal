package com.employeemanagement.security;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import lombok.var;

@Service
@RequiredArgsConstructor
public class AuthenticationService {

	private final UserRepository repository;

	private final PasswordEncoder passwordEncoder;

	private final JwtService jwtService;

	private final AuthenticationManager authenticationManager;

	public AuthenticationResponse register(RegisterRequest request) {
		var user = Users.builder().name(request.getName()).employeeNumber(request.getEmployeeNumber())
				.password(passwordEncoder.encode(request.getPassword())).role(request.getRole()).build();
		repository.save(user);
		var jwtToken = jwtService.generateToken(user);
		return AuthenticationResponse.builder().token(jwtToken).build();
	}

	public AuthenticationResponse authenticate(AuthenticationRequest request) {
		authenticationManager.authenticate(
				new UsernamePasswordAuthenticationToken(request.getEmployeeNumber(), request.getPassword()));
		var user = repository.findByEmployeeNumber(request.getEmployeeNumber()).orElseThrow();
		var jwtToken = jwtService.generateToken(user);
		return AuthenticationResponse.builder().token(jwtToken).build();
	}
}
