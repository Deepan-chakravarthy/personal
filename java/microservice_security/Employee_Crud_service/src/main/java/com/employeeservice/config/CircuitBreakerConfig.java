package com.employeeservice.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import okhttp3.OkHttpClient;

@Configuration
public class CircuitBreakerConfig {

	@Bean
	OkHttpClient okHttpClient() {
		return new OkHttpClient();
	}
	
}
