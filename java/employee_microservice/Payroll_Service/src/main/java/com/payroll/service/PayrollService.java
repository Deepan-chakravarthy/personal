package com.payroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payroll.entity.Payroll;
import com.payroll.repository.PayrollRepository;

@Service
public class PayrollService {

	@Autowired
	private PayrollRepository payrollRepository;
	
	public Payroll addPayroll(Payroll payroll) {
		return payrollRepository.save(payroll);
	}
	
	public Payroll getByEmployeeNumber(Integer employeeNumber) {
		return payrollRepository.findByEmployeeNumber(employeeNumber);
	}
	
	public List<Payroll> getAllPayrolls() {
		return payrollRepository.findAll();
	}
	
	public void deletePayroll(Integer employeeNumber) {
		payrollRepository.deleteByEmployeeNumber(employeeNumber);
	}
	
	public Payroll updatePayroll(Payroll payroll) {
		Integer empNumber = payroll.getEmployeeNumber(); 
		Payroll updatePayroll = payrollRepository.findByEmployeeNumber(empNumber);
		updatePayroll.setSalary(payroll.getSalary());
		return payrollRepository.save(updatePayroll);
	}
	
}
