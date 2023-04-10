package com.authservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.authservice.entity.Users;
import com.authservice.repository.UserRepository;

@Service
public class AuthService {

	@Autowired
	private UserRepository repository;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private JwtService jwtService;

	public String saveUser(Users credential) {
		credential.setPassword(passwordEncoder.encode(credential.getPassword()));
		repository.save(credential);
		return "user added";
	}

	public String generateToken(String username) {
		return jwtService.generateToken(username);
	}

	public void validateToken(String token) {
		jwtService.validateToken(token);
	}
}
