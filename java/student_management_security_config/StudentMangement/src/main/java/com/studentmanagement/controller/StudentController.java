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
@RequestMapping("/v1")
public class StudentController {

	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private StudentService studentService;

	@PostMapping("/add")
	public MessageDTO addStudent(@RequestBody StudentDTO student) {
		return studentService.addStudent(student);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN ')")
	@GetMapping("/viewall")
	public List<Student> viewAll() {
		return studentService.viewAll();
	}

	@GetMapping("/view/{registerno}")
	public StudentDTO viewByRegisterNo(@PathVariable Integer registerno) {
		return studentService.viewByRegisterNo(registerno);
	}

	@DeleteMapping("/deleteall")
	public MessageDTO deleteAll() {
		return studentService.deleteAll();
	}

	@DeleteMapping("delete/{registerno}")
	public MessageDTO deleteByRegisterNo(@PathVariable Integer registerno) {
		return studentService.deleteByRegisterNo(registerno);
	}

	@PutMapping("update")
	public MessageDTO update(@RequestBody StudentDTO student) {
//		Student putStudent = studentRepository.findByRegisterNo(student.getRegisterNo());
//		Contact putContact = putStudent.getContact();
//		if (!ObjectUtils.isEmpty(putStudent)) {
//			if (student.getFirstName() != null) {
//				putStudent.setFirstName(student.getFirstName());
//			}
//			if (student.getLastName() != null) {
//				putStudent.setLastName(student.getLastName());
//			}
//			if (student.getDepartment() != null) {
//				putStudent.setDepartment(student.getDepartment());
//			}
//			if (student.getGender() != null) {
//				putStudent.setGender(student.getGender());
//			}
//			if (student.getDob() != null) {
//				putStudent.setDob(student.getDob());
//			}
//			if (student.getAge() != null) {
//				putStudent.setAge(student.getAge());
//			}
//			if (student.getContact().getEmail() != null) {
//				putContact.setEmail(student.getContact().getEmail());
//			}
//			if (student.getContact().getMobile() != null) {
//				putContact.setMobile(student.getContact().getMobile());
//			}
//			if (student.getContact().getLandline() != null) {
//				putContact.setLandline(student.getContact().getLandline());
//			}
//			putStudent.setUpdatedDate(LocalDateTime.now());
//			studentRepository.save(putStudent);
//			return "updated successfully";
//		} else {
//			return "record not found";
//		}
		return studentService.update(student);
	}

	@GetMapping("searchall/{sample}")
	public List<Student> search(@PathVariable String sample) {
		return studentRepository.searchAll(sample);
	}
	
	@GetMapping("searchbyname/{fname}/{lname}")
	public List<Student> searchByName(@PathVariable String fname , @PathVariable String lname){
		return studentRepository.findStudentByFirstNameAndLastName(fname, lname);
	}
	
	@GetMapping("searchbydistrict/{district}")
	public List<Student> searchByDistrict(@PathVariable String district){
		return studentRepository.findByDistrict(district);
	} 
}
