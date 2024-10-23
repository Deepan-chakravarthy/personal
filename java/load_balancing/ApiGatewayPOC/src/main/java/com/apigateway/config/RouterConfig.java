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
				.route((r1) -> r1.path("/c1/api/**").uri("lb://firstclient")) // dynamic routing
                .route((r2) -> r2.path("/c2/api/**").uri("http://localhost:8082/")) // static routing
                .build();
	}
	
}
