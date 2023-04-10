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

import com.employeeservice.customexception.EmptyInputException;

@ControllerAdvice
public class MyControllerAdvice extends ResponseEntityExceptionHandler {

	@ExceptionHandler(EmptyInputException.class)
	public ResponseEntity<String> handleEmptyInputException(EmptyInputException exception) {
		String message = exception.getErrorMessage();
		return new ResponseEntity<String>(message, HttpStatus.BAD_REQUEST);
	}
	
	@ExceptionHandler({
			NoSuchElementException.class,
			EmptyResultDataAccessException.class})
	public ResponseEntity<String> handleNoSuchElementException(Exception exception) {
		return new ResponseEntity<String>("Record not found", HttpStatus.NOT_FOUND);
	}
	
	@Override
	protected ResponseEntity<Object> handleHttpRequestMethodNotSupported(HttpRequestMethodNotSupportedException ex,
			HttpHeaders headers, HttpStatus status, WebRequest request) {
		return new ResponseEntity<Object>("Please, change your Media type (request type)", HttpStatus.UNSUPPORTED_MEDIA_TYPE);
	}
	
}
