package com.studentmanagement.dao;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.studentmanagement.dto.MessageDTO;
import com.studentmanagement.dto.StudentDTO;
import com.studentmanagement.model.Student;
import com.studentmanagement.repository.StudentRepository;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Component
public class StudentDAOImp implements StudentDAO {

	@Autowired
	private StudentRepository studentRepository;
	
	public MessageDTO addStudent(StudentDTO student) {
	    Student saveStudent = new Student();
	    BeanUtils.copyProperties(student, saveStudent);
	    studentRepository.save(saveStudent);
	    log.info(saveStudent);
	    log.info(student);
	    log.info("Successfully saved");
	    return new MessageDTO(saveStudent.getFirstName() + " details  was saved Successfully");
	}
	
	public List<Student> viewAll(){
		return studentRepository.findAll();
	}
	
	public StudentDTO viewByRegisterNo(Integer registerno) {
		    StudentDTO getStudentDTO = new StudentDTO();
		    BeanUtils.copyProperties(studentRepository.findByRegisterNo(registerno), getStudentDTO);
		    return getStudentDTO;
	}
	
	public MessageDTO deleteAll() {
		studentRepository.deleteAll();
		return new MessageDTO("All records were deleted Successfully");
	}
	
	public MessageDTO deleteByRegisterNo(Integer registerno) {
		if(studentRepository.findByRegisterNo(registerno) != null) {
			studentRepository.deleteByRegisterNo(registerno);
			return new MessageDTO(registerno + " was successfully deleted");
		}
		return new MessageDTO(registerno + " was not found");
	}
	
	public MessageDTO update(StudentDTO student) {
		if(studentRepository.findByRegisterNo(student.getRegisterNo()) != null) {
		    Student updatestudent = studentRepository.findByRegisterNo(student.getRegisterNo());
		    log.info(updatestudent);
		    BeanUtils.copyProperties(student, updatestudent);
		    log.info(updatestudent);
		    updatestudent.setUpdatedDate(LocalDateTime.now());
		    studentRepository.save(updatestudent);
		    return new MessageDTO(student.getRegisterNo() + " was updated successfully");
		}
		return new MessageDTO(student.getRegisterNo() + " was not found");
	}
}
