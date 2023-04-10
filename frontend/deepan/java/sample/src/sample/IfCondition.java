package sample;

import java.util.*;

public class IfCondition {
	public static void main(String[] args) {
		System.out.println("Enter the age");
		Scanner scanner =new Scanner(System.in);
				int age = scanner.nextInt();
			if(age<0) {
				System.out.println("Invalid input");
			} else if(age < 5){
				System.out.println("you are kid");
			} else if(age >= 5 && age < 18)  {
				System.out.println("you are school student");
			} else if(age >= 18 && age <= 23) {
				System.out.println("you are college student");
			} else if(age > 23 && age <= 40) {
				System.out.println("you are earner");
			} else if(age > 40 && age <= 60) {
				System.out.println("you are elder");
			} else if(age > 60 && age <= 80 ) {
				System.out.println("you are senior citizen");
			} else                                                                                                                               {
				System.out.println("you are very old");
			}
		
	}

}
