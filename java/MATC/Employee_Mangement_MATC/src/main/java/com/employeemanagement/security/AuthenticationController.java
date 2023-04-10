package com.employeemanagement.security;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/auth")
public class AuthenticationController {

	private final AuthenticationService service;

//	@Autowired
//	private UserRepository userRepository;
	
	@PostMapping("/register")
	public ResponseEntity<AuthenticationResponse> register(@RequestBody RegisterRequest request) {
//		   if(Boolean.TRUE.equals(userRepository.existsByUsername(request.getEmployeeNumber()))) {
//			   return ResponseEntity.ok(new MessageResponse("Error: EmployeeNumber is already Registered! "));
//		   }
	       return ResponseEntity.ok(service.register(request));
	}

	@PostMapping("/authenticate")
	public ResponseEntity<AuthenticationResponse> authenticate(@RequestBody AuthenticationRequest request) {
		return ResponseEntity.ok(service.authenticate(request));
	}
}
