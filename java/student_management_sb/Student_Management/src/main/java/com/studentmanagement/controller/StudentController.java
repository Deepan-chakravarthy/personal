package com.studentmanagement.controller;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.studentmanagement.model.Student;
import com.studentmanagement.repository.StudentRepository;

import jakarta.transaction.Transactional;

@RestController
@Transactional
@RequestMapping("/v0")
public class StudentController {

	@Autowired
	private StudentRepository studentRepository;

	@PostMapping("/add")
	public Student addStudent(@RequestBody Student student) {
		return studentRepository.save(student);
	}

	@GetMapping("/viewall")
	public List<Student> viewAll() {
		return studentRepository.findAll();
	}
	
	@GetMapping("/view/{registerno}")
	public Student view(@PathVariable Integer registerno) {
		return studentRepository.findByRegisterNo(registerno);
	}
	
	@DeleteMapping("/deleteall")
	public String deleteAll() {
		studentRepository.deleteAll();
		return "All records are deleted";
	}
	
	@DeleteMapping("delete/{registerno}")
	public String delete(@PathVariable Integer registerno) {
		if(studentRepository.findByRegisterNo(registerno) != null) {
			studentRepository.deleteByRegisterNo(registerno);
			return registerno + " is deleted successfully";
		} else {
			return registerno + " is not registered";
		}
	}
	
	@PutMapping("update")
	public String update(@RequestBody Student student ) {
		Student putStudent = studentRepository.findByRegisterNo(student.getRegisterNo());
		if(!ObjectUtils.isEmpty(putStudent)) {
			if(student.getFirstName() != null) {
				putStudent.setFirstName(student.getFirstName());
			}
			if(student.getLastName() != null) {
				putStudent.setLastName(student.getLastName());
			}
			if(student.getDepartment() != null) {
				putStudent.setDepartment(student.getDepartment());	
			}
			if(student.getDistrict() != null) {
				putStudent.setDistrict(student.getDistrict());	
			}
			if(student.getState() != null) {
				putStudent.setState(student.getState());	
			}
			if(student.getMobile() != null) {
				putStudent.setMobile(student.getMobile());	
			}
			if(student.getEmail() != null) {
				putStudent.setEmail(student.getEmail());	
			}
			if(student.getGender() != null) {
				putStudent.setGender(student.getGender());	
			}
			if(student.getDob() != null) {
				putStudent.setDob(student.getDob());	
			}
			if(student.getAge() != null) {
				putStudent.setAge(student.getAge());	
			}
			putStudent.setUpdatedDate(LocalDateTime.now());
			studentRepository.save(putStudent);
			return "updated successfully";
		} else {
			return "record not found";
		}
	}
	
	@GetMapping("search/{sample}")
	public List<Student> search(@PathVariable String sample) {
		return studentRepository.searchAll(sample);
	}
}

 







