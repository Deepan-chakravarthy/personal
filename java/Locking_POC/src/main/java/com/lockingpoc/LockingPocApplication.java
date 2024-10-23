package com.lockingpoc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@EnableAsync
@SpringBootApplication
public class LockingPocApplication {

	public static void main(String[] args) {
		SpringApplication.run(LockingPocApplication.class, args);
	}

}
