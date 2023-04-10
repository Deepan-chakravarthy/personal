package com.studentregister.login;

import java.util.Scanner;

public class Login {

	@SuppressWarnings("resource")
	public void loginMethod() {
		Scanner scanner = new Scanner(System.in);
		AdminLogin adminLogin = new AdminLogin();
		StudentLogin studentLogin = new StudentLogin();
		try {
			System.out.println("\n press 1 to login as Admin   press 2 to login as Student");
			Integer loginOption = scanner.nextInt();
			if (loginOption == 1 || loginOption == 2) {
				if (loginOption == 1) {
					adminLogin.login();
				} else {
					studentLogin.login();
				}
			} else {
				throw new ArithmeticException();
			}
		} catch (ArithmeticException e) {
			System.out.println("\nEnter 1 or 2");
			loginMethod();
		} catch (Exception e) {
			System.out.println("Enter only Number");
			loginMethod();
		}
		scanner.close();
	}
}
