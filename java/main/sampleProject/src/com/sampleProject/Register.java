package com.sampleProject;

import java.util.Scanner;

public class Register {

	int rollno;
	String name;
	int age;
	long mobile;
	Scanner sc = new Scanner(System.in);

	public Register(int rollno, String name, int age, long mobile) {
		// TODO Auto-generated constructor stub
		this.rollno = rollno;
		this.name = name;
		this.age = age;
		this.mobile = mobile;
	}

	public Register() {
		// TODO Auto-generated constructor stub
	}

	public void register() {
		System.out.println("Enter rollno:");
		this.rollno = sc.nextInt();
		sc.nextLine();
		System.out.println("Enter Name:");
		// Scanner sc1 = new Scanner(System.in);
		this.name = sc.nextLine();
		System.out.println("Enter age:");
		// Scanner sc2 = new Scanner(System.in);
		this.age = sc.nextInt();
		System.out.println("Enter Mobile:");
		// Scanner sc3 = new Scanner(System.in);
		this.mobile = sc.nextLong();
	}
}
