//package com.apigateway.config;
//
//import org.springframework.cloud.gateway.filter.GatewayFilter;
//import org.springframework.cloud.gateway.route.RouteLocator;
//import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.client.RestTemplate;
//
//import com.apigateway.filter.AuthenticationFilter;
//
//@Configuration
//public class RouterConfig {
//
//	@Bean
//	  public AuthenticationFilter authenticationFilter() {
//	    return new AuthenticationFilter();
//	  }
//	
//	@Bean
//	public RestTemplate template() {
//		return new RestTemplate();
//	}
//
//	@Bean
//	public RouteLocator gatewayRoutes(RouteLocatorBuilder builder) {
//		return builder.routes().route((r1) -> r1.path("/employee/**").filters(f -> f.filters(authenticationFilter())).uri("http://localhost:8081/"))
//				.route((r2) -> r2.path("/payroll/**").uri("http://localhost:8082/")).build();
//	}
//
//}
