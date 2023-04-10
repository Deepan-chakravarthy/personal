//package com.employeemanagement.log;
//
//import java.time.LocalDateTime;
//import java.time.format.DateTimeFormatter;
//
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//import org.hibernate.annotations.GenericGenerator;
//
//import lombok.AllArgsConstructor;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//@Data
//@Entity
//@AllArgsConstructor
//@NoArgsConstructor
//@Table(name = "sign_in_log")
//public class signInLog {
//
//	@GeneratedValue(generator = "uuid2")
//	@GenericGenerator(name = "uuid2", strategy = "uuid2")
//	@Id
//	private String id;
//	
//    private String accesstime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy hh:mm:ss a"));
//    
//    private String userName;
//    
//    private String role;
//}
