package com.employeemanagement.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.jaegertracing.internal.JaegerTracer;
import io.jaegertracing.internal.samplers.ConstSampler;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Configuration
public class JaegerConfig {

	@Bean
	public JaegerTracer jaegerTracer() {

		log.info("Jaeger Configured");

		return new io.jaegertracing.Configuration("Employee-Management")
				.withSampler(new io.jaegertracing.Configuration.SamplerConfiguration().withType(ConstSampler.TYPE)
						.withParam(1))
				.withReporter(new io.jaegertracing.Configuration.ReporterConfiguration().withLogSpans(true))
				.getTracer();
	}
	
}
