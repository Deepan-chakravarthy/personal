package com.employeemanagement.interceptor;

import org.springframework.boot.autoconfigure.web.servlet.error.BasicErrorController;
import org.springframework.core.MethodParameter;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

import lombok.extern.log4j.Log4j2;

@Log4j2
@ControllerAdvice
@Order(Ordered.HIGHEST_PRECEDENCE)
public class ResponseInterceptor implements ResponseBodyAdvice<Object> {

	@Override
	public boolean supports(MethodParameter returnType, Class<? extends HttpMessageConverter<?>> converterType) {
		return true;
	}

	@Override
	public Object beforeBodyWrite(Object body, MethodParameter returnType, MediaType selectedContentType,
			Class<? extends HttpMessageConverter<?>> selectedConverterType, ServerHttpRequest request,
			ServerHttpResponse response) {
		log.info("Controller Advise invoked");
		if(returnType.getMethod().getReturnType() == ResponseEntity.class
				|| returnType.getDeclaringClass() == ResponseExceptionInterceptor.class
				|| returnType.getDeclaringClass() == BasicErrorController.class) {

//			return Response.builder().data(body).corelationId(MDC.get("CorrelationId").toString()).build();
			return Response.builder().data(body).build();

		} else {

//			return Response.builder().data(body).corelationId(MDC.get("CorrelationId").toString()).build();
			return Response.builder().data(body).build();

		}
	}

}
