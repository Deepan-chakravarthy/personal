package com.sample1;
import java.io.FileWriter;   // Import the FileWriter class
import java.io.IOException;  // Import the IOException class to handle errors

public class FileWrite {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
		      FileWriter myWriter = new FileWriter("abcd.txt");
		      myWriter.write("abcdefghijklmnopqrstuvwxyz");
		      myWriter.close();
		      System.out.println("Successfully wrote on the file.");
		    } catch (IOException e) {
		      System.out.println("An error occurred.");
		      e.printStackTrace();
		    }
	}

}
