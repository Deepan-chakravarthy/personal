package com.sampleProject;

import java.util.List;
import java.util.Scanner;

public class Register {

	int rollno;
	String name;
	int age;
	long mobile;
	Scanner sc = new Scanner(System.in);

	public Register(int rollno, String name, int age, long mobile) {
		this.rollno = rollno;
		this.name = name;
		this.age = age;
		this.mobile = mobile;
	}

	public Register() {
	}

	public void addRollno(List<Register> list) {
		System.out.println("Enter rollno:");
		int checkrollno = sc.nextInt();
	    boolean check = false;
		for(Register register : list) {
			if(checkrollno == register.rollno) {
				check = true;
			}
		}
		if(check == false) {
			this.rollno = checkrollno;
			sc.nextLine();
			register();	
		}else {
			System.out.println(checkrollno+" is already registered \n");
			addRollno(list);
		}	
	}
	public void register() {
		System.out.println("Enter Name:");
		this.name = sc.nextLine();
		System.out.println("Enter age:");
		this.age = sc.nextInt();
		System.out.println("Enter Mobile:");
		this.mobile = sc.nextLong();
	}
}
