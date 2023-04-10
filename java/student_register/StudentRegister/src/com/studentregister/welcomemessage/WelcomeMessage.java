package com.studentregister.welcomemessage;

import com.studentregister.login.Login;
import com.studentregister.result.Result;
import com.studentregister.variable.Mark;
import com.studentregister.variable.Mark.GradeConstant;
import com.studentregister.variable.Student;

public class WelcomeMessage extends Result {
	public void message() {
		studentDetails.add(new Student(1, "akash", 18, "01/01/2001", "ECE"));
		studentDetails.add(new Student(2, "logesh", 19, "02/02/2002", "BCA"));
		studentDetails.add(new Student(3, "deepan", 23, "03/03/2003", "MCA"));
		studentDetails.add(new Student(4, "guru", 21, "04/104/2004", "Msc cs"));
		studentDetails.add(new Student(5, "niranjan", 21, "05/05/2005", "Bsc cs"));
		markList.put(1, new Mark(90, 85, 98, 87, 99, 100, 559, 93, GradeConstant.A));
		markList.put(2, new Mark(65, 65, 68, 67, 69, 60, 394, 65, GradeConstant.D));
		markList.put(3, new Mark(50, 55, 58, 57, 59, 50, 329, 55, GradeConstant.E));
		markList.put(4, new Mark(30, 35, 38, 37, 39, 30, 209, 35, GradeConstant.F));
		markList.put(5, new Mark(80, 85, 88, 87, 89, 80, 509, 85, GradeConstant.B));
		System.out.println("\n                      Welcome");
		System.out.println("                         to");
		System.out.println("                  Student Register");
		Login login = new Login();
		login.loginMethod();
	}
}
