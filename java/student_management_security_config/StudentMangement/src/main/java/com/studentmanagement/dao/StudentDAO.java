package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.dto.MessageDTO;
import com.studentmanagement.dto.StudentDTO;
import com.studentmanagement.model.Student;

public interface StudentDAO {

	public MessageDTO addStudent(StudentDTO student);
	
	public List<Student> viewAll();
	
	public StudentDTO viewByRegisterNo(Integer registerno);
	
	public MessageDTO deleteAll();
	
	public MessageDTO deleteByRegisterNo(Integer registerno);
	
	public MessageDTO update(StudentDTO student);
	
}
