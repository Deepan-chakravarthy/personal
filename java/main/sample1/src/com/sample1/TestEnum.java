package com.sample1;

import com.sample1.Enum.Direction;

public class TestEnum {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        for(Direction d : Direction.values()) {
        	System.out.println(d);
        }
        System.out.println("Index of EAST is: "+Direction.valueOf("EAST").ordinal());
        System.out.println("Direction is: "+Direction.valueOf("SOUTH"));
        
        Direction d1 = Direction.WEST;
        System.out.println(d1);
	}

}
