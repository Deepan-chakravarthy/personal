package com.studentregister.menu;

import java.util.Scanner;

import com.studentregister.login.Login;
import com.studentregister.registrationform.RegistrationForm;

public class AdminMenu {

	RegistrationForm registrationForm = new RegistrationForm();

	public void menu() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("\nMenu");
		System.out.println("Enter \n 1 to add new student");
		System.out.println(" 2 to view all student details");
		System.out.println(" 3 to view particular student details");
		System.out.println(" 4 to update student details");
		System.out.println(" 5 to delete student details");
		System.out.println(" 6 to mark menu");
		System.out.println(" 0 to logout");
		try {
			Integer option = scanner.nextInt();
			switch (option) {
			case 1:
				registrationForm.registerno();
				break;
			case 2:
				registrationForm.viewAll();
				break;
			case 3:
				registrationForm.view();
				menu();
				break;
			case 4:
				registrationForm.update();
				break;
			case 5:
				registrationForm.delete();
				menu();
				break;
			case 6:
				AdminMarkMenu adminMarkMenu = new AdminMarkMenu();
				adminMarkMenu.message();
				break;
			case 0:
				System.out.println("Logged out successfully");
				Login objLogin = new Login();
				objLogin.loginMethod();
				break;
			default:
				System.err.println("Enter 0-6");
				menu();
				break;
			}
		} catch (Exception e) {
			System.err.println("Enter only number");
			menu();
		}
		scanner.close();
	}
}
