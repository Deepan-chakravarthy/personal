package com.studentmanagement.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.studentmanagement.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {
	
	Student findByRegisterNo(Integer registerNo);
	
	void deleteByRegisterNo(Integer registerNo);
	
	@Query(value = "SELECT * FROM Student.student s WHERE CONCAT(district,department,state,first_name,last_name) LIKE  %:sample%" , nativeQuery = true)
	List<Student> searchAll(String sample);
}
