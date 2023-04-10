//package com.employeemanagement.repository;
//
//import java.util.List;

//import javax.persistence.EntityManager;
//import javax.persistence.criteria.CriteriaBuilder;
//import javax.persistence.criteria.CriteriaQuery;
//import javax.persistence.criteria.Join;
//import javax.persistence.criteria.Root;
//
//import org.springframework.stereotype.Repository;
//
//import com.employeemanagement.model.Address;
//import com.employeemanagement.model.Employee;
//import com.employeemanagement.model.Person;

//@Repository
//public class CustomRepoImp implements CustomRepository {
//
//	EntityManager entityManager;
	
//	@Override
//	public List<Employee> search(String content) {
//		 CriteriaBuilder cb = entityManager.getCriteriaBuilder();
//	     CriteriaQuery<Employee> cq = cb.createQuery(Employee.class);
//	     Root<Employee> employee = cq.from(Employee.class);
//	     Join<Person, Employee> join1 = employee.join("person");
//	     Join<Address, Employee> join2 = employee.join("address");
//	     
//		return null;
//	}
//
//}
