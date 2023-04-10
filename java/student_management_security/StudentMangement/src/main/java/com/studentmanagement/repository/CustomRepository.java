																																																																																																																																																																																																											package com.studentmanagement.repository;

import java.util.List;

import com.studentmanagement.model.Student;

public interface CustomRepository {

	List<Student> findStudentByFirstNameAndLastName(String firstName, String lastName);

}
