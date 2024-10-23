package com.sample1;

public class ConditionStatements {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int i = 10;
		                                                       // if statement
		if(i>5) {        
			System.out.println("Number is greater than 5");
		}
		
		if(i>10) {                                             // if-else statement
			System.out.println("Number is greater than 10");
		}
		else {
			System.out.println("Number is greater than 5 and less than 10");
		}
		    
		if(i>10) {                                             // if...else-if...else statement
			System.out.println("Number is greater than 10");
		} else if(i>0) {
			System.out.println("Number is greater than 0 and less than 10");
		} else {
			System.out.println("Number is less than 0");
		}
		
		if(i>5) {                                              // Nested if statement
		   if(i%2==0) {
			   System.out.println("Number is greater than 5 and even number");
		   }
		   else {
			   System.out.println("Number is greater than 5 and odd number");
		   } 
		}
		else {
			System.out.println("Number is less than 5");
		}

	}

}
