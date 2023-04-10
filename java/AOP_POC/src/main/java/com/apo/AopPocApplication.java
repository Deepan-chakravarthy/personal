package com.apo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@EnableAspectJAutoProxy
@SpringBootApplication
public class AopPocApplication {

	public static void main(String[] args) {
		SpringApplication.run(AopPocApplication.class, args);
	}

}
