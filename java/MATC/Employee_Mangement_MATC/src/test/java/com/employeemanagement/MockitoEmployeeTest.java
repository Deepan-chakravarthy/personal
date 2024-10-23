package com.employeemanagement;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.employeemanagement.controller.EmployeeController;
import com.employeemanagement.customdatatypes.Designation;
import com.employeemanagement.dao.EmployeeDaoImp;
import com.employeemanagement.dto.EmployeeRequest;
import com.employeemanagement.dto.EmployeeResponse;
import com.employeemanagement.dto.MessageResponse;
import com.employeemanagement.model.Employee;
import com.employeemanagement.service.EmployeeService;

import lombok.extern.log4j.Log4j2;
import net.bytebuddy.utility.RandomString;

@Log4j2
@ExtendWith(MockitoExtension.class)
class MockitoEmployeeTest {

	@InjectMocks
	private EmployeeService employeeService;

	@Mock
	private EmployeeController employeeController;

	@Mock
	private EmployeeDaoImp employeeDao;

	@Test
	void viewByEmployeeNumber() {
		EmployeeResponse employeeResponse = new EmployeeResponse(null, "admin123@gmail.com", null, null, null, null);
		String employeeNumber = "99999";
		when(employeeDao.viewByEmployeeNo(employeeNumber)).thenReturn(employeeResponse);

		EmployeeResponse result = employeeService.viewByEmployeeNo(employeeNumber);
        log.info(result.getEmail());
		assertThat(result.getEmail()).isEqualTo("admin123@gmail.com");
	}
	
	@Test
	void viewAllEmployee() {
		Employee employee1 = new Employee(RandomString.make(5), "11111", "admin123@gmail.com", Designation.ADMIN, LocalDate.now(), null, null, null, null, null);
		Employee employee2 = new Employee(RandomString.make(5), "22222", "hr123@gmail.com", Designation.HR, LocalDate.now(), null, null, null, null, null);
		List<Employee> employeeList = new ArrayList<>();
		employeeList.add(employee1);
		employeeList.add(employee2);
		
		when(employeeDao.viewAll()).thenReturn(employeeList);
		
		List<Employee> result = employeeService.viewAll();
		
		log.info(result);
		
		assertThat(result.get(0).getNumber()).isEqualTo(employeeList.get(0).getNumber());
		assertThat(result.get(1).getEmail()).isEqualTo(employee2.getEmail());
	}

	@Test
    void addEmployee() {
		EmployeeRequest employee = new EmployeeRequest("11111", "admin123@gmail.com", Designation.ADMIN, null, null, null);
		
		when(employeeDao.addEmployee(employee)).thenReturn(new MessageResponse("successfully saved"));
		
		MessageResponse result = employeeDao.addEmployee(employee);
		
		log.info(result);
		
		assertThat(result.getMessage()).isEqualTo("successfully saved");
	}
	
}
