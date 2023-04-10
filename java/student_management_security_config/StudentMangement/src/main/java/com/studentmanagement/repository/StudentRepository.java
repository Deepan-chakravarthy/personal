package com.studentmanagement.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.studentmanagement.model.Student;

@Repository
@Transactional
public interface StudentRepository extends JpaRepository<Student, Integer> , CustomRepository {

	Student findByRegisterNo(Integer registerNo);

	void deleteByRegisterNo(Integer registerNo);

	@Query(value = "SELECT * FROM student.student s WHERE CONCAT(department,first_name,last_name) LIKE  %:sample%", nativeQuery = true)
	List<Student> searchAll(String sample);
	
    @Query(value = "select * from student.student s\n"
    		+ "inner join \n"
    		+ "student.contact c\n"
    		+ "on \n"
    		+ "s.contact_id = c.id \n"
    		+ "inner join \n"
    		+ "student.student_address sa  \n"
    		+ "on\n"
    		+ "sa.student_id  = s.id \n"
    		+ "inner join \n"
    		+ "address a \n"
    		+ "on\n"
    		+ "sa.address_id = a.id " , nativeQuery = true)
	List<Student> findByDistrict(String district);
}
