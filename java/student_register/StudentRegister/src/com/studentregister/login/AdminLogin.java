package com.studentregister.login;

import java.util.Scanner;

import javax.security.auth.login.LoginException;

import com.studentregister.menu.AdminMenu;

public class AdminLogin {
	static final String adminUserName = "admin";
	static final String adminPassword = "admin123";

	Scanner scanner = new Scanner(System.in);

	public void login() {
		AdminMenu adminMenu = new AdminMenu();
		System.out.println("Admin login");
		System.out.println("Enter username:");
		String username = scanner.nextLine();
		try {

			if (adminUserName.equals(username)) {
				System.out.println("\nEnter Password:");
				String password = scanner.nextLine();
				if (adminPassword.equals(password)) {
					adminMenu.menu();
				} else {
					throw new LoginException("Invalid Password");
				}
			} else {
				throw new LoginException("Invalid Username");
			}
		} catch (LoginException e) {
			System.out.println(e);
			login();
		}

//		if (adminUserName.equals(username)) {
//			System.out.println("\nEnter Password:");
//			String password = scanner.nextLine();
//			if (adminPassword.equals(password)) {
//				objAdminMenu.menu();
//			} else {
//				System.out.println("wrong Password \n");
//				login.loginMethod();
//			}
//		} else {
//			System.out.println("Wrong username \n");
//			login.loginMethod();
//		}
//		scanner.close();
	}
}
