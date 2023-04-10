package com.sample1;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class Serial {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
         String s = "hello world";
         FileOutputStream f1 = new FileOutputStream("serial.txt");
         ObjectOutputStream o1 = new ObjectOutputStream(f1);
         o1.writeObject(s);
         o1.close();
         System.out.println("successfull");
	}

}
