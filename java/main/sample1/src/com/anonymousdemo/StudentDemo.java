package com.anonymousdemo;

class DemoSchool {
	
	public DemoSchool(DemoStudent demoStudent) {
	}

	public void message() {
		System.out.println("Welcome to School");
	}
}

interface DemoStudent {
	public void message1();
}

//Anonymous Inner class that defines inside method/constructor argument
public class StudentDemo {

	public static void main(String[] args) {
		DemoSchool demoSchool = new DemoSchool(new DemoStudent() {

			@Override
			public void message1() {
				System.out.println("welcome");
			}
		});
		demoSchool.message();
//		demoSchool.message1();
	}

}
