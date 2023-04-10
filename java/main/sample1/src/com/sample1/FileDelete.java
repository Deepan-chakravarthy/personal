package com.sample1;
import java.io.File;  // Import the File class

public class FileDelete {
	public static void main(String[] args) {
		File myObj = new File("abcd.txt"); 
	    if (myObj.delete()) { 
	      System.out.println("Deleted the file: " + myObj.getName());
	    } else {
	      System.out.println("Failed to delete the file.");
	    } 	
	}
}
