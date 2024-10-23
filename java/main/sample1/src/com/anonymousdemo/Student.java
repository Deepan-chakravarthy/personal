package com.anonymousdemo;

class School{
	
	public void message() {
		System.out.println("Welcome");
	}
}

// Anonymous Inner class that Extends Class
public class Student {

	public static void main(String[] args) {          
		School school = new School() {
			@Override
			public void message() {
				System.out.println("Welcome to School");
			}
		};
		school.message();
	}

}
