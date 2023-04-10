package com.sample1;

public class TestConst {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
         Const const1 = new Const("deepan",23);
         System.out.println(const1);
         Const const2 = new Const(21,"Akash");
         System.out.println(const2);
         Const const3 = new Const(const1);
         System.out.println(const3);
	}

}
