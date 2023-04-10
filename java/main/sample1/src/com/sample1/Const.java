package com.sample1;

public class Const {

	private String name;
	private int age;
	
	public Const(String name,int age) {
		// TODO Auto-generated constructor stub
		this.name = name;
		this.age = age;
	}
	
	public Const(int age,String name) {
		// TODO Auto-generated constructor stub
		this.name = name;
		this.age = age;
	}
	public Const(Const a) {
		this.name = a.name;
		this.age = a.age;
	}
    
	@Override
	public String toString() {
		return this.name + " age is " + this.age;
	}
}
