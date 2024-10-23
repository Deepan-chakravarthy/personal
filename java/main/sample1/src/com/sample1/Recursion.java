package com.sample1;

public class Recursion {

	public static void main(String[] args) {
		
        System.out.println(addRecursion(7000)); 
	}
	
	public static Integer addRecursion(Integer a) {
		if(a>0) {
		return a + addRecursion(--a);
		}
		return 0;
	}
}
