package com.list;

import java.util.*;

public class ListTest {
	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		
		list.add("sunday");
		list.add("monday");
		list.add("tuesday");
		list.add("wednesday");
		list.add("thursday");
		list.add("friday");
		list.add("saturday");
		list.add("sunday");
		
		for(String day : list) {
			System.out.println(day);
		}
		
		// converting list to array
		
		String[] array = new String[list.size()];
		list.toArray(array);
		System.out.println(list);
		
		// String[] array = list.toArray(new String[list.size()]);
		// System.out.println(Arrays.toString(array));
		
		// converting array to list
		
		List<String> list1 = new ArrayList<String>();
		
		for(String day : array) {
			list1.add(day);
		}
		System.out.println(list1);	
	}

}
