package com.employeemanagement.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

import com.employeemanagement.exception.BusinessException;

@Component
public class Validator {

	private static final String mobilePattern = "[6-9][0-9]{9}";
	
	private static final String employeeNumberPattern = "[1-9][0-9]{4}";

	public void checkValidMobileNumber(String mobileNo) throws BusinessException {

		Pattern pattern = Pattern.compile(mobilePattern);
		Matcher matcher = pattern.matcher(mobileNo);

		if (!(matcher.find() && matcher.group().equals(mobileNo))) {

			throw new BusinessException("Invalid_Mobile_Number", mobilePattern);
		}
	}
	
	public void checkValidEmployeeNumber(String number) throws BusinessException {
		
		Pattern pattern = Pattern.compile(employeeNumberPattern);
		Matcher matcher = pattern.matcher(number);
		
		if (!(matcher.find() && matcher.group().equals(number))) {

			throw new BusinessException("INVALID_EMPLOYEE_NUMBER", employeeNumberPattern);
		}
	}

}
