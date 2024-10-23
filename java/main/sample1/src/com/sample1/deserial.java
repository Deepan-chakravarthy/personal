package com.sample1;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;

public class deserial {
	public static void main(String[] args) throws IOException, ClassNotFoundException {
		FileInputStream f1 = new FileInputStream("/home/dorustree/Downloads/Save.txt");
		ObjectInput o1 = new ObjectInputStream(f1);
		System.out.println(o1.readObject());
		o1.close();
	}
}
