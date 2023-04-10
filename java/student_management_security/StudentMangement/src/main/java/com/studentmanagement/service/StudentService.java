package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.studentmanagement.dao.StudentDAO;
import com.studentmanagement.dto.MessageDTO;
import com.studentmanagement.dto.StudentDTO;
import com.studentmanagement.model.Student;

@Component
public class StudentService {

	@Autowired
	private StudentDAO studentDAO; 
	
	public MessageDTO addStudent(StudentDTO student) {
		return studentDAO.addStudent(student);
	}
	
	public List<Student> viewAll() {
		return studentDAO.viewAll();
	}
	
	public StudentDTO viewByRegisterNo(Integer registerno) {
		return studentDAO.viewByRegisterNo(registerno);
	}
	
	public MessageDTO deleteAll() {
		return studentDAO.deleteAll();
	}
	
	public MessageDTO deleteByRegisterNo(Integer registerno) {
		return studentDAO.deleteByRegisterNo(registerno);
	}
	
	public MessageDTO update(StudentDTO student) {
		return studentDAO.update(student);
	}
}
