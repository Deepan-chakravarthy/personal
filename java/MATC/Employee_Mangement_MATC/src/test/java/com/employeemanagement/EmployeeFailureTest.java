package com.employeemanagement;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Assert;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpStatusCodeException;
import org.springframework.web.client.RestTemplate;

import com.employeemanagement.customdatatypes.AddressType;
import com.employeemanagement.customdatatypes.Designation;
import com.employeemanagement.customdatatypes.Gender;
import com.employeemanagement.interceptor.Response;
import com.employeemanagement.model.Address;
import com.employeemanagement.model.Employee;
import com.employeemanagement.model.Person;
import com.employeemanagement.security.AuthenticationRequest;
import com.employeemanagement.security.RegisterRequest;
import com.employeemanagement.security.Role;
import com.employeemanagement.security.Users;

import lombok.extern.log4j.Log4j2;
import net.bytebuddy.utility.RandomString;

@Log4j2
@TestMethodOrder(OrderAnnotation.class)
public class EmployeeFailureTest {

	static String globalEmployeeNumber;

	static String globalPassword;

	static String globalToken;
	
	/**
	 * 
	 * @author Deepan 
	 * order 1 and 2 (success) for generate token
	 *
	 */
	
	
	@Test
	@Order(1)
	void signupUserSuccess() {
		RestTemplate restTemplate = new RestTemplate();
		Users user = new Users();
		user.setEmployeeNumber("10101");
		user.setPassword(RandomStringUtils.randomAlphanumeric(8));
		user.setRole(Role.ROLE_ADMIN);
		globalEmployeeNumber = user.getEmployeeNumber();
		globalPassword = user.getPassword();
		final String baseUrl = "http://localhost:8080/v1/auth/register";
		ResponseEntity<?> result = restTemplate.postForEntity(baseUrl, user, Response.class);
		log.info("Result Body : " + result.getBody());
		Assert.assertEquals(200, result.getStatusCodeValue());
	}

	@Test
	@Order(2)
	void signinUserSuccess() {
		RestTemplate restTemplate = new RestTemplate();
		AuthenticationRequest authenticationRequest = new AuthenticationRequest();
		authenticationRequest.setEmployeeNumber(globalEmployeeNumber);
		authenticationRequest.setPassword(globalPassword);
		final String baseUrl = "http://localhost:8080/v1/auth/authenticate";
		ResponseEntity<?> result = restTemplate.postForEntity(baseUrl, authenticationRequest,
				Response.class);
		Response<?> response =  (Response<?>) result.getBody();
		log.debug(response);
		String jwtResponse = response.getData().toString();
		Integer index = jwtResponse.indexOf("token=");
		jwtResponse = jwtResponse.substring(index + 6);
		Integer lastIndex = jwtResponse.indexOf("}");
		globalToken = jwtResponse.substring(0,lastIndex);
		log.info(globalToken);
		Assert.assertEquals(200, result.getStatusCodeValue());
	}
	
    @Test
    @Order(3)
    void signupUserFailure() {
    	RestTemplate restTemplate = new RestTemplate();
    	RegisterRequest user = new RegisterRequest();
    	user.setEmployeeNumber(globalEmployeeNumber); // Duplicate Employee Number
    	user.setPassword(RandomStringUtils.randomAlphanumeric(8));
		user.setRole(Role.ROLE_ADMIN);
		final String baseUrl = "http://localhost:8080/v1/auth/register";
		try {
			restTemplate.postForEntity(baseUrl, user, Response.class);
		} catch (HttpStatusCodeException ex) {
			log.info(ex.getStatusCode().toString());
			Assert.assertEquals("500 INTERNAL_SERVER_ERROR", ex.getStatusCode().toString());
		}
    }

    @Test
    @Order(4)
    void signinUserFailure() {
        RestTemplate restTemplate = new RestTemplate();
        AuthenticationRequest user = new AuthenticationRequest();
        user.setEmployeeNumber(globalEmployeeNumber);
        user.setPassword("123456"); // Wrong Password
        final String baseUrl = "http://localhost:8080/matc/v1/auth/authenticate";
        try {
            restTemplate.postForEntity(baseUrl, user, Response.class);
        } catch (HttpStatusCodeException ex) {
        	log.info(ex.getStatusCode().toString());
        	Assert.assertEquals("403 FORBIDDEN", ex.getStatusCode().toString());
        }
    }
    
    @Test
    @Order(5)
    void addEmployeeFailure() {
    	RestTemplate restTemplate = new RestTemplate();
		Employee employee = new Employee();
		employee.setNumber(globalEmployeeNumber);
		employee.setEmail("admin@gmail.com");
		employee.setDesignation(Designation.ADMIN);
		employee.setJoiningDate(LocalDate.now());
		employee.setPerson(new Person(RandomString.make(), "Admin", 30, LocalDate.of(1991, 12, 31), Gender.MALE,
				"98765", "MCOM")); // Invalid Mobile Number
		List<Address> addressList = new ArrayList<>();
		Address address = new Address(RandomString.make(), AddressType.PERMANENT, "15/3", "KK Nagar", "Trichy",
				"Tamil Nadu", 620012);
		addressList.add(address);
		employee.setAddress(addressList);
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(employee, headers);
		final String baseUrl = "http://localhost:8080/v1/employee/add";
		try {
			restTemplate.exchange(baseUrl, HttpMethod.POST, request, Response.class);
		} catch (HttpStatusCodeException ex) {
			log.info(ex.getStatusCode().toString());
			Assert.assertEquals("500 INTERNAL_SERVER_ERROR", ex.getStatusCode().toString());
        }
    }
    
    @Test
    @Order(6)
    void viewEmployeeFailure() {
    	RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(headers);
		final String baseUrl = "http://localhost:8080/v1/employee/view/222222"; // Invalid Employee Number
		try {
			restTemplate.exchange(baseUrl, HttpMethod.GET, request, Response.class);
		} catch (HttpStatusCodeException ex) {
			log.info(ex.getStatusCode().toString());
			Assert.assertEquals("500 INTERNAL_SERVER_ERROR", ex.getStatusCode().toString());
        }
    }
    
    @Test
    @Order(7)
    void updateEmployeeFailure() {
    	RestTemplate restTemplate = new RestTemplate();
		Employee employee = new Employee();
		employee.setNumber("222222"); // Invalid Employee Number
		employee.setEmail("admin10@gmail.com");
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(employee, headers);
		final String baseUrl = "http://localhost:8080/v1/employee/update/employee";
		try {
			restTemplate.exchange(baseUrl, HttpMethod.PUT , request , Response.class);
		} catch (HttpStatusCodeException ex) {
			log.info(ex.getStatusCode().toString());
			Assert.assertEquals("500 INTERNAL_SERVER_ERROR", ex.getStatusCode().toString());
        }
    }
    
    @Test
    @Order(8)
    void deleteEmployeeFailure() {
    	RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(headers);
		final String baseUrl = "http://localhost:8080/v1/employee/delete/2222222"; // Invalid Employee Number
		try {
			restTemplate.exchange(baseUrl, HttpMethod.DELETE, request, Response.class);
		} catch (HttpStatusCodeException ex) {
			log.info(ex.getStatusCode().toString());
			Assert.assertEquals("500 INTERNAL_SERVER_ERROR", ex.getStatusCode().toString());
        }
    }
    
}
