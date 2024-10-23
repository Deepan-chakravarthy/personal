package com.studentregister.result;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Scanner;
import java.util.stream.Collectors;

import com.studentregister.menu.AdminMarkMenu;
import com.studentregister.registrationform.RegistrationForm;
import com.studentregister.variable.Mark;
import com.studentregister.variable.Student;

public class Result extends RegistrationForm {

    protected static Map<Integer, Mark> markList = new HashMap<>();

	public void validateRegisterNo() {
		Scanner scanner = new Scanner(System.in);

		System.out.println("Enter Register No:");
		Integer checkRegisterNo = -1;
		try {
			checkRegisterNo = scanner.nextInt();
		} catch (Exception e) {
			System.out.println("Enter only Numbers");
			validateRegisterNo();
		}

		Boolean check = false;
		for (Student register : studentDetails) {
			if (checkRegisterNo.equals(register.getRegisterNo())) {
				check = true;
			}
		}
		if (check == Boolean.TRUE) {
			markList.put(checkRegisterNo, addMark());
			System.out.println("\n Marks successfully added \n");
			AdminMarkMenu adminMarkMenu = new AdminMarkMenu();
			adminMarkMenu.menu();
		} else {
			System.out.println(checkRegisterNo + " is not registered.");
			validateRegisterNo();
		}
		scanner.close();
	}

	public Mark addMark() {
		Scanner scanner = new Scanner(System.in);
		Mark mark = new Mark();
		try {
			System.out.println("Enter subject 1 Mark");
			Integer mark1 = scanner.nextInt();
			mark.setSubject1(scanner.nextInt());
			System.out.println("Enter subject 2 Mark");
			Integer mark2 = scanner.nextInt();
			mark.setSubject2(mark2);
			System.out.println("Enter subject 3 Mark");
			Integer mark3 = scanner.nextInt();
			mark.setSubject3(mark3);
			System.out.println("Enter subject 4 Mark");
			Integer mark4 = scanner.nextInt();
			mark.setSubject4(mark4);
			System.out.println("Enter subject 5 Mark");
			Integer mark5 = scanner.nextInt();
			mark.setSubject5(mark5);
			System.out.println("Enter subject 6 Mark");
			Integer mark6 = scanner.nextInt();
			mark.setSubject6(mark6);
			Integer total = mark1 + mark2 + mark3 + mark4 + mark5 + mark6;
			mark.setTotal(total);
			Integer average = (mark.getTotal() * 100) / 600;
			mark.setAverage(average);

			if (average >= 90) {
				mark.setGrade(Mark.GradeConstant.A);
			} else if (average >= 80) {
				mark.setGrade(Mark.GradeConstant.B);
			} else if (average >= 70) {
				mark.setGrade(Mark.GradeConstant.C);
			} else if (average >= 60) {
				mark.setGrade(Mark.GradeConstant.D);
			} else if (average >= 50) {
				mark.setGrade(Mark.GradeConstant.E);
			} else {
				mark.setGrade(Mark.GradeConstant.F);
			}
		} catch (Exception e) {
			System.out.println("Enter only Number");
			addMark();
		}
		scanner.close();
		return mark;
	}

	public void viewAllMarks() {
		for (HashMap.Entry<Integer, Mark> entry : markList.entrySet()) {
			Integer registerNo = entry.getKey();
			Mark Mark = entry.getValue();
			System.out.println("\nRegister No: " + registerNo);
			System.out.println(Mark.toString());
		}
		AdminMarkMenu adminMarkMenu = new AdminMarkMenu();
		adminMarkMenu.menu();
	}

	public void viewParticularMark() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter Register No:");
		Integer checkRegisterNo = -1;
		try {
			checkRegisterNo = scanner.nextInt();
		} catch (Exception e) {
			System.out.println("Enter only Numbers");
			validateRegisterNo();
		}
		Boolean check = false;
		for (HashMap.Entry<Integer, Mark> entry : markList.entrySet()) {
			Integer registerno = entry.getKey();
			if (checkRegisterNo.equals(registerno)) {
				check = true;
			}
		}
		if (check == Boolean.TRUE) {
			for (HashMap.Entry<Integer, Mark> entry : markList.entrySet()) {
				Integer registerno = entry.getKey();
				if (checkRegisterNo.equals(registerno)) {
					System.out.println("Register No:" + registerno);
					Mark Mark = entry.getValue();
					System.out.println(Mark + "\n");
				}
			}
		} else {
			System.out.println("Marks not added");
		}
		AdminMarkMenu adminMarkMenu = new AdminMarkMenu();
		adminMarkMenu.menu();
		scanner.close();
	}

	public void viewParticularMark(Integer checkRegisterNo) {
		Boolean check = false;
		for (HashMap.Entry<Integer, Mark> entry : markList.entrySet()) {
			Integer registerno = entry.getKey();
			if (checkRegisterNo.equals(registerno)) {
				check = true;
			}
		}
		if (check == Boolean.TRUE) {
			for (HashMap.Entry<Integer, Mark> entry : markList.entrySet()) {
				Integer registerno = entry.getKey();
				if (checkRegisterNo.equals(registerno)) {
					Mark Mark = entry.getValue();
					System.out.println(Mark);
				}
			}
		} else {
			System.out.println("Marks not added");
		}
	}
	
	public void failedStudent() {
		Map<Integer, Mark>
	    filtered = markList.entrySet()
	               .stream()
	               .filter(a->a.getValue()
	            		      .getAverage()<=50)
	               .collect(Collectors.toMap(Entry::getKey, Entry::getValue));
		for (Map.Entry<Integer, Mark> entry : filtered.entrySet()) {
			System.out.println("Register no:" + entry.getKey());
			System.out.println(entry.getValue() + "\n");
		}
		AdminMarkMenu adminMarkMenu = new AdminMarkMenu();
		adminMarkMenu.menu();
	}
}
