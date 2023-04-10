package com.circuitbreaker.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.circuitbreaker.service.CircuitService;

@RestController
@RequestMapping("c3/api")
public class CircuitController {

	@Autowired
	private CircuitService circuitService;
	
	@GetMapping("/google")
	public String pingGoogle() throws IOException {
		return circuitService.pingGoogle();
	}
	
}
