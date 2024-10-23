package com.studentregister.menu;

import java.util.Scanner;

import com.studentregister.result.Result;


public class AdminMarkMenu implements MarkMenu {

	public void message() {
		System.out.println("\n Welcome to Mark Menu Admin  \n");
		menu();
	}

	public void menu() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter:");
		System.out.println("1 to add marks");
		System.out.println("2 to view all marks");
		System.out.println("3 to view particular marks");
		System.out.println("4 to view failers");
		System.out.println("0 to previous menu");

		try {
			Integer option = scanner.nextInt();
			Result result = new Result();
			switch (option) {
			case 1:
				result.validateRegisterNo();
				break;
			case 2:
				result.viewAllMarks();
				break;
			case 3:
				result.viewParticularMark();
				break;
			case 4:
				result.failedStudent();
				break;
			case 0:
				AdminMenu adminMenu = new AdminMenu();
				adminMenu.menu();
				break;
			default:
				System.out.println("Enter 0-5");
				menu();
				break;
			}
		} catch (Exception e) {
			System.out.println("Enter only Numbers");
			menu();
		}
		scanner.close();
	}
}
