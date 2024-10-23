package com.employeemanagement;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Assert;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.employeemanagement.customdatatypes.AddressType;
import com.employeemanagement.customdatatypes.Designation;
import com.employeemanagement.customdatatypes.Gender;
import com.employeemanagement.interceptor.Response;
import com.employeemanagement.model.Address;
import com.employeemanagement.model.Employee;
import com.employeemanagement.model.Person;
import com.employeemanagement.security.AuthenticationRequest;
import com.employeemanagement.security.Role;
import com.employeemanagement.security.Users;

import lombok.extern.log4j.Log4j2;
import net.bytebuddy.utility.RandomString;

@Log4j2
@TestMethodOrder(OrderAnnotation.class)
class EmployeeSuccessTest {

	static String globalEmployeeNumber;

	static String globalPassword;

	static String globalToken;

	@Test
	@Order(1)
	void signupUser() {
		RestTemplate restTemplate = new RestTemplate();
		Users user = new Users();
		user.setEmployeeNumber("11111");
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
	void signinUser() {
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
	void addemployee() {
		RestTemplate restTemplate = new RestTemplate();
		Employee employee = new Employee();
		employee.setNumber(globalEmployeeNumber);
		employee.setEmail("admin@gmail.com");
		employee.setDesignation(Designation.ADMIN);
		employee.setJoiningDate(LocalDate.now());
		employee.setPerson(new Person(RandomString.make(), "Admin", 30, LocalDate.of(1991, 12, 31), Gender.MALE,
				"9876543219", "MCOM"));
		List<Address> addressList = new ArrayList<>();
		Address address = new Address(RandomString.make(), AddressType.PERMANENT, "15/3", "KK Nagar", "Trichy",
				"Tamil Nadu", 620012);
		addressList.add(address);
		employee.setAddress(addressList);
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(employee, headers);
		final String baseUrl = "http://localhost:8080/v1/employee/add";
		ResponseEntity<?> result = restTemplate.exchange(baseUrl, HttpMethod.POST, request,
				Response.class);
		log.info("Result Body : " + result.getBody());
		Assert.assertEquals(200, result.getStatusCodeValue());
	}
	
	@Test
	@Order(5)
	void viewEmployee() {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(headers);
		final String baseUrl = "http://localhost:8080/v1/employee/view";
		ResponseEntity<?> result = restTemplate.exchange(baseUrl, HttpMethod.GET, request,
				Response.class);
		log.info("Result Body : " + result.getBody());
		Assert.assertEquals(200, result.getStatusCodeValue());
	}

	@Test
	@Order(6)
	void updateEmployee() {
		RestTemplate restTemplate = new RestTemplate();
		Employee employee = new Employee();
		employee.setNumber(globalEmployeeNumber);
		employee.setEmail("admin10@gmail.com");
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(employee, headers);
		final String baseUrl = "http://localhost:8080/v1/employee/update/employee";
		ResponseEntity<?> result = restTemplate.exchange(baseUrl, HttpMethod.PUT , request , Response.class);
		log.info("Result Body : " + result.getBody());
		Assert.assertEquals(200, result.getStatusCodeValue());
	}
	
	@Test
	@Order(7)
	void viewAllEmployee( ) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(headers);
		final String baseUrl = "http://localhost:8080/v1/employee/viewall";
		ResponseEntity<?> result = restTemplate.exchange(baseUrl, HttpMethod.GET, request, Response.class);
		log.info("Result Body : " + result.getBody());
		Assert.assertEquals(200, result.getStatusCodeValue());
	}
	
	@Test
	@Order(8)
	void viewEmployeeByNumber() {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(headers);
		final String baseUrl = "http://localhost:8080/v1/employee/view/" + globalEmployeeNumber;
		ResponseEntity<?> result = restTemplate.exchange(baseUrl, HttpMethod.GET, request, Response.class);
		log.info("Result Body : " + result.getBody());
		Assert.assertEquals(200, result.getStatusCodeValue());
	}
	
	@Test
	@Order(9)
	void viewPaginatedEmployee() {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(headers);
		final String baseUrl = "http://localhost:8080/v1/employee/paginated/viewall?pageNo=0&pageSize=1";
		ResponseEntity<?> result = restTemplate.exchange(baseUrl, HttpMethod.GET, request, Response.class);
		log.debug("Result Body : " + result.getBody());
		Assert.assertEquals(200, result.getStatusCodeValue());
	}
	
	@Test
	@Order(10)
	void deleteEmployee() {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(globalToken);
		HttpEntity<?> request = new HttpEntity<Object>(headers);
		final String baseUrl = "http://localhost:8080/v1/employee/delete/" + globalEmployeeNumber;
		ResponseEntity<?> result = restTemplate.exchange(baseUrl, HttpMethod.DELETE, request, Response.class);
		log.debug("Result Body : " + result.getBody());
		Assert.assertEquals(200, result.getStatusCodeValue());
	}
	
}
