package sample;

import java.util.Arrays;

public class Exercise1 {
   public static void main(String[] args) {
	System.out.println("Welcome to Advento family");
	System.out.println("Number from 0 to 100");
	for(int i=0;i<=100;i++) {
		System.out.print(i  + " ");
	}
	System.out.println("");
	
	System.out.println("Number from 100 to 0");
	for(int j=100;j>=0;j--) {
		System.out.print(j + " ");
	}
	System.out.println("");
	
	System.out.println("Ten tables");
	for(int k=0;k<=100;k+=10) {
		 
		System.out.println(k + " ");
	}
	System.out.println("");
	System.out.println("with array");
    int a[]= {1,10,2,9,3,8,4,7,5,6};
    for(int b=0;b<a.length;b++) {
    	System.out.println(a[b]*10);  
    }
    System.out.println("");
    System.out.println("without array");
    for(int z=10;z<=50;z+=10) {
    	System.out.println(z + ",");
    	System.out.println(110-z + ","); 
    }
    System.out.println("odd number from 0 to 100");
    for(int z=1;z<=100;z+=2) {
    	System.out.println(z +" ");
    }
    System.out.println("even number from 0 to 100");
    for(int z=0;z<=100;z+=2) {
    	System.out.println(z +" ");
    }
    System.out.print("\n");
    for(int i=1;i<=4;i++){
    	for(int j=1;j<=i;j++){
    		System.out.print(i);
    	}
    	System.out.print("\n");
    }
    System.out.print("\n");
    for(int i=1;i<=4;i++){
    	for(int j=1;j<=i;j++){
    		System.out.print(j);
    	}
    	System.out.print("\n");
    }
    System.out.print("\n");
    for(int i=1;i<=4;i++){
    	for(int j=1;j<=i;j++){
    		System.out.print("*");
    	}
    	System.out.print("\n");
    }
    System.out.print("\n");
    for(int i=4;i>=1;i--){
    	for(int j=1;j<=i;j++){
    		System.out.print("*");
    	}
    	System.out.print("\n");
    }
    System.out.print("\n");
    for(int i=1;i<=4;i++){
    	for(int j=1;j<=i;j++){
    		System.out.print("*");
    	}
    	System.out.print("\n");
    }
    for(int i=3;i>=1;i--){
    	for(int j=1;j<=i;j++){
    		System.out.print("*");
    	}
    	System.out.print("\n");
    }
    System.out.print("\n");
    for(int i=1;i<=4;i++){
    	for(int j=1;j<=4-i;j++){
    		System.out.print(" ");
    	}
    	for(int k=0;k<2*i-1;k++){
    		System.out.print("*");
    	}
    	System.out.print("\n");
    }
    System.out.print("\n");
    for(int i=4;i>=1;i--){
    	for(int j=1;j<=4-i;j++){
    		System.out.print(" ");
    	}
    	for(int k=0;k<2*i-1;k++){
    		System.out.print("*");
    	}
    	System.out.print("\n");
    }
    System.out.print("\n");
    for(int i=1;i<=4;i++){
    	for(int j=1;j<=4-i;j++){
    		System.out.print(" ");
    	}
    	for(int k=0;k<2*i-1;k++){
    		System.out.print("*");
    	}
    	System.out.print("\n");
    }
    for(int i=3;i>=1;i--){
    	for(int j=1;j<=4-i;j++){
    		System.out.print(" ");
    	}
    	for(int k=0;k<2*i-1;k++){
    		System.out.print("*");
    	}
    	System.out.print("\n");
    }
    System.out.print("\n");
    int array[]=new int[100];
    for(int i=0;i<100;i++){
    	array[i]=i+1;
    }
    System.out.println(Arrays.toString(array));
  }
}
