package com.studentregister.menu;

import java.util.Scanner;

import com.studentregister.login.Login;
import com.studentregister.registrationform.RegistrationForm;
import com.studentregister.result.Result;

public class StudentMenu {

	RegistrationForm registrationForm = new RegistrationForm();
	Result result = new Result();

	public void menu(Integer index, Integer registerNo) {
		try (Scanner scanner = new Scanner(System.in)) {
			System.out.println("\nMenu");
			System.out.println("Enter \n 1 to view your Details \n 2 to view your marks \n 0 to log out");
			try {
				Integer option = scanner.nextInt();
				switch (option) {
				case 1:
					registrationForm.view(index);
					menu(index, registerNo);
					break;
				case 2:
					MarkMenu markMenu = () -> System.out.println("Result--->Register no:" + registerNo);
					markMenu.message();
					result.viewParticularMark(registerNo);
					menu(index, registerNo);
					break;
				case 0:
					System.out.println("Logged out successfully");
					Login login = new Login();
					login.loginMethod();
					break;
				default:
					System.out.println("Enter 0-1");
				}
			} catch (Exception e) {
				System.out.println("Enter only numbers");
				menu(index, registerNo);
			}
		}
	}
}
