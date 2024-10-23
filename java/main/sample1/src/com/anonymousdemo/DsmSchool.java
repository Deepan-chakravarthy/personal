package com.anonymousdemo;

interface SchoolDemo{
	void message();
}

// Anonymous Inner class Extends Interface
public class DsmSchool {

	public static void main(String[] args) {
        SchoolDemo schoolDemo = new SchoolDemo() {
			@Override
			public void message() {
				System.out.println("Welcome to school");
			}
		};
		schoolDemo.message();
	}

}
