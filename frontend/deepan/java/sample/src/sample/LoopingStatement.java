package sample;

import java.util.Scanner;

public class LoopingStatement {
	public static void main(String[] args) {
		for(int i=1;i<=10;i++) {
			System.out.print(i + " ");
		}
		 
		System.out.print("\n");
		 int j=1;
		 while(true) {
				System.out.print(j + " ");
				j++;
				
				if(j>10) {
					break;
				}
			}
		 
		 int k=1;
		System.out.print("\n");
		while(true) {
			System.out.println(k + " ");
			k++;
			Scanner scanner =new Scanner(System.in);
			int z = scanner.nextInt();
			if(z==0) {
				break;
			}
		}
	}
}
