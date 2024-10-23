package com.employeeservice.advice;

import java.util.NoSuchElementException;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.employeeservice.Response.ResponseError;
import com.employeeservice.customexception.EmptyInputException;

import lombok.extern.log4j.Log4j2;

@Log4j2
@ControllerAdvice
public class MyControllerAdviceException extends ResponseEntityExceptionHandler {

	@ExceptionHandler(EmptyInputException.class)
	public ResponseEntity<Object> handleEmptyInputException(EmptyInputException exception) {
		log.info("Exception Handler invoked");
		ResponseError error = ResponseError.builder().error(exception.getErrorMessage()).build();
		return new ResponseEntity<>(error, HttpStatus.BAD_REQUEST);
	}
	
	@ExceptionHandler({
			NoSuchElementException.class,
			EmptyResultDataAccessException.class})
	public ResponseEntity<Object> handleNoSuchElementException(Exception exception) {
		log.info("Exception Handler invoked");
		ResponseError error = ResponseError.builder().error("Record not found").build();
		return new ResponseEntity<>(error, HttpStatus.NOT_FOUND);
	}
	
	@Override
	protected ResponseEntity<Object> handleHttpRequestMethodNotSupported(HttpRequestMethodNotSupportedException ex,
			HttpHeaders headers, HttpStatus status, WebRequest request) {
		log.info("Exception Handler invoked");
		ResponseError error = ResponseError.builder().error("Please, change your Media type (request type)").build();
		return new ResponseEntity<>(error, HttpStatus.UNSUPPORTED_MEDIA_TYPE);
	}
	
}
