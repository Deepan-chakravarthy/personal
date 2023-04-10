package com.studentregister.registrationform;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.studentregister.menu.AdminMenu;
import com.studentregister.variable.Student;

public class RegistrationForm {

	protected static List<Student> studentDetails = new ArrayList<>();

	public static List<Student> getarray() {
		return studentDetails;
	}

	public void registerno() {
		Scanner scanner = new Scanner(System.in);
		Student student = new Student();
		System.out.println("Enter rollno:");
		Integer checkRegisterNo = -1;
		try {
			checkRegisterNo = scanner.nextInt();
		} catch (Exception e) {
			System.out.println("Enter only Number");
			registerno();
		}

		Boolean count = false;
		for (Student register : studentDetails) {
			if (checkRegisterNo.equals(register.getRegisterNo())) {
				count = true;
			}
		}
		if (count == Boolean.FALSE) {
			student.setRegisterNo(checkRegisterNo);
			scanner.nextLine();
			form(student);
		} else {
			System.out.println(checkRegisterNo + " is already registered \n");
			registerno();
			scanner.close();
		}
	}

	public void form(Student student) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter Name:");
		student.setName(scanner.nextLine());
		System.out.println("Enter age:");
		try {
			student.setAge(scanner.nextInt());
		} catch (Exception e) {
			System.out.println("Enter only number");
			form(student);
		}
		student.setDob(date());
		scanner.nextLine();
		System.out.println("Enter department:");
		student.setDepartment(scanner.nextLine());
		studentDetails.add(student);
		System.out.println("Successfully added");
		AdminMenu adminMenu = new AdminMenu();
		adminMenu.menu();
		scanner.close();
	}

	public void viewAll() {
		System.out.println("Total no of students : " + studentDetails.size());
		for (Student register : studentDetails) {
			System.out.println(register);
		}
		AdminMenu adminMenu = new AdminMenu();
		adminMenu.menu();
	}

	public void view() {
		Scanner scanner = new Scanner(System.in);
		try {
			System.out.println("Enter Registerno:");
			Integer checkRegisterNo = scanner.nextInt();
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
				System.out.println(studentDetails.get(index));
			} else {
				System.out.println("Register Number not registered");
				view();
			}
		} catch (Exception e) {
			System.out.println("Enter only Numbers");
			view();
			scanner.close();
		}
	}

	public void view(Integer index) {
		System.out.println(studentDetails.get(index));
	}

	public void update() {
		Scanner scanner = new Scanner(System.in);
		try {
			System.out.println("Enter Registerno:");
			Integer checkRegisterNo = scanner.nextInt();
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
				System.out.println("Register Number not registered");
				update();
			}
			System.out.println("Enter:\n 1 to edit name \n 2 to edit age \n 3 to edit dob \n 4 to edit department");
			Integer editoption = scanner.nextInt();
			scanner.nextLine();
			switch (editoption) {
			case 1:
				System.out.println("Enter new name:");
				studentDetails.get(index).setName(scanner.nextLine());
				break;
			case 2:
				System.out.println("Enter new age:");
				studentDetails.get(index).setAge(scanner.nextInt());
				break;
			case 3:
				System.out.println("Enter new dob:");
				studentDetails.get(index).setDob(scanner.nextLine());
				break;
			case 4:
				System.out.println("Enter new department:");
				studentDetails.get(index).setDepartment(scanner.nextLine());
				break;
			default:
				System.out.println("Enter only 1-4");
				update();
				break;
			}
		} catch (Exception e) {
			System.out.println("Enter only Numbers");
			update();
			scanner.close();
		}
		AdminMenu adminMenu = new AdminMenu();
		adminMenu.menu();
	}

	
	public void delete() {
		Scanner scanner = new Scanner(System.in);
		try {
			System.out.println("Enter Registerno:");
			Integer checkRegisterNo = scanner.nextInt();
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
				studentDetails.remove((int)index);
				System.out.println(checkRegisterNo + " is deleted sucessfully");
			} else {
				System.out.println("Register Number not registered");
				delete();
			}
		} catch (Exception e) {
			System.out.println("Enter only Numbers");
			delete();
			scanner.close();
		}
	}

	public String date() {
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter dob[dd/mm/yyyy]:");
		String date = null;
		date = scanner.next();
		Boolean check = validateDate(date);
		if (check == Boolean.TRUE) {
			return date;
		} else {
			System.out.println("Invalid date");
			return date();
		}
	}

//	public Boolean validateDate(String date) {
//		try {
//			String[] splitDate = date.split("/");
//			Integer dd = Integer.parseInt(splitDate[0]);
//			Integer mm = Integer.parseInt(splitDate[1]);
//			Integer yyyy = Integer.parseInt(splitDate[2]);
//			if ((yyyy % 4 == 0) && (mm == 2) && (dd > 0) && (dd <= 29) && (mm > 0) && (mm <= 12)) {
//				return true;
//			} else if ((yyyy % 4 != 0) && (mm == 2) && (dd > 0) && (dd <= 28) && (mm > 0) && (mm <= 12)) {
//				return true;
//			} else if (((yyyy % 4 != 0) || (yyyy % 4 == 0)) && (mm != 2) && (mm % 2 != 0) && (dd > 0) && (dd <= 31)
//					&& (mm > 0) && (mm <= 12)) {
//				return true;
//			} else if (((yyyy % 4 != 0) || (yyyy % 4 == 0)) && (mm != 2) && (mm % 2 == 0) && (dd > 0) && (dd <= 30)
//					&& (mm > 0) && (mm <= 12)) {
//				return true;
//			} else {
//				return false;
//			}
//		} catch (Exception e) {
//			return false;
//		}
//	}
//}

	public Boolean validateDate(String date) {
		try {
			DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd/MM/yyyy");
			LocalDate validatedDate = LocalDate.parse(date,myFormatObj);
			System.out.println(validatedDate);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
