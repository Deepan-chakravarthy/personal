package com.inheritance;

public class InheritanceTest {
       public static void main(String[] args) {
    	 System.out.println("single level inheritance:");    
		 Students s1 = new Students();
		 s1.welMsg();
		 s1.mark();
		 System.out.println("Hierarchical inheritance:");
		 Staff st1 = new Staff();
		 st1.welMsg();
		 st1.salary();
		 System.out.println("Multi-level inheritance:");
		 Principal p1 = new Principal();
		 p1.welMsg();
		 p1.salary();
		 p1.revenue();
	}
}
