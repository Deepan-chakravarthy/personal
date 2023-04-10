package com.firstclient;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
public class FirstClientApplication {

	public static void main(String[] args) {
		SpringApplication.run(FirstClientApplication.class, args);
	}

}
