package com.webclient.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

@RestController
@RequestMapping("c4/api")
public class Controller {

	@GetMapping("/hello")
	public String hello() {
		WebClient webClient = WebClient.create();
		return webClient.get()
				.uri("localhost:9090/c1/api/hello")
	            .retrieve()
	            .bodyToMono(String.class)
	            .block();
	}
	
}
