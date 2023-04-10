package com.apigateway.config;

import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RouterConfig {
	
	@Bean
	public RouteLocator gatewayRoutes(RouteLocatorBuilder builder) {
		return builder.routes()
				.route((r1) -> r1.path("/employee/**").uri("http://localhost:8081/"))
				.route((r2) -> r2.path("/payroll/**").uri("http://localhost:8082/"))
                .build();
	}
	
}
