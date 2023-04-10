package com.sampleProject;

import java.util.Scanner;

public class Marks {
	int tam;
	int eng;
	int maths;
	int sci;
	int soc;
	Scanner sc = new Scanner(System.in);

	public void adding() {
		System.out.println("Enter tamil mark");
		this.tam = sc.nextInt();
		System.out.println("Enter english mark");
		this.eng = sc.nextInt();
		System.out.println("Enter maths mark");
		this.maths = sc.nextInt();
		System.out.println("Enter science mark");
		this.sci = sc.nextInt();
		System.out.println("Enter social mark");
		this.soc = sc.nextInt();
	}
}
