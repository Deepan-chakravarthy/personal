package com.transactional;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync
public class TransactionalPocApplication {

	public static void main(String[] args) {
		SpringApplication.run(TransactionalPocApplication.class, args);
	}

}
