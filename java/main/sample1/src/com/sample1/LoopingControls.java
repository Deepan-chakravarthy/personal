package com.sample1;

public class LoopingControls {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
           for(int i=1;i<=5;i++) {                          // for loop
        	   for(int j=1;j<=i;j++) {
        		   System.out.print(i);
        	   }
        	   System.out.println(" ");
           }
           System.out.println(" ");
           
           int a = 1;                                       // while loop
           while(a<=5) {
        	   System.out.println("Number is " + a);
        	   a++;
           }
           System.out.println(" ");
           
           int b=1;                                         // do-while loop
           do {
        	   System.out.println("do-while loop executes atleast once eventhough the condition is false");
        	   b++;
           } while(b<0);
	}

}
