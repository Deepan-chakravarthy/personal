package com.studentmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.studentmanagement.dto.MessageDTO;
import com.studentmanagement.dto.StudentDTO;
import com.studentmanagement.model.Student;
import com.studentmanagement.repository.StudentRepository;
import com.studentmanagement.service.StudentService;

@RestController
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentRepository studentRepository;

	@Autowired
	private StudentService studentService;

//	@RolesAllowed(value = "ADMIN")
	@PreAuthorize("hasAnyRole('ROLE_ADMIN' , 'ROLE_USER')")
	@PostMapping("/add")
	public MessageDTO addStudent(@RequestBody StudentDTO student) {
		return studentService.addStudent(student);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/viewall")
	public List<Student> viewAll() {
		return studentService.viewAll();
	}

	@PreAuthorize("hasAnyRole('ROLE_ADMIN' , 'ROLE_USER')")
	@GetMapping("/view/{registerno}")
	public StudentDTO viewByRegisterNo(@PathVariable Integer registerno) {
		return studentService.viewByRegisterNo(registerno);
	}

//	@PreAuthorize("hasRole('ROLE_ADMIN')")
//	@DeleteMapping("/deleteall")
//	public MessageDTO deleteAll() {
//		return studentService.deleteAll();
//	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@DeleteMapping("delete/{registerno}")
	public MessageDTO deleteByRegisterNo(@PathVariable Integer registerno) {
		return studentService.deleteByRegisterNo(registerno);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PutMapping("update")
	public MessageDTO update(@RequestBody StudentDTO student) {
		return studentService.update(student);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("searchall/{sample}")
	public List<Student> search(@PathVariable String sample) {
		return studentRepository.searchAll(sample);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("searchbyname/{fname}/{lname}")
	public List<Student> searchByName(@PathVariable String fname, @PathVariable String lname) {
		return studentRepository.findStudentByFirstNameAndLastName(fname, lname);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("searchbydistrict/{district}")
	public List<Student> searchByDistrict(@PathVariable String district) {
		return studentRepository.findByDistrict(district);
	}
}
