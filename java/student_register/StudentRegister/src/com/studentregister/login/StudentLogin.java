package com.studentregister.login;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.studentregister.menu.StudentMenu;
import com.studentregister.registrationform.RegistrationForm;
import com.studentregister.variable.Student;

public class StudentLogin {

	static List<Student> studentDetails = new ArrayList<>();

	public void login() {
		studentDetails = RegistrationForm.getarray();
		Scanner scanner = new Scanner(System.in);
		System.out.println("Student login");
		System.out.println("Enter checkRegisterNo:");
		Integer checkRegisterNo = 0;
		try {
			checkRegisterNo = scanner.nextInt();
		} catch (Exception e) {
			System.out.println("Enter only Numbers\n");
			login();
		}
		Boolean check = false;
		Integer index = -1;
		for (Student register : studentDetails) {
			if (checkRegisterNo.equals(register.getRegisterNo())) {
				check = true;
			}
		}
		if (check == Boolean.TRUE) {
			for (Student register : studentDetails) {
				if (checkRegisterNo.equals(register.getRegisterNo())) {
					index = studentDetails.indexOf(register);
				}
			}
		} else {
			System.out.println("Register Number is not registered");
			login();
		}
		scanner.nextLine();
		System.out.println("Enter DOB:");
		String dob = scanner.nextLine();
		if (checkRegisterNo.equals(studentDetails.get(index).getRegisterNo())
				&& dob.equals(studentDetails.get(index).getDob())) {
			StudentMenu studentMenu = new StudentMenu();
			studentMenu.menu(index, checkRegisterNo);
		} else {
			System.out.println("Incorrect password");
			login();
		}
		scanner.close();
	}
}
