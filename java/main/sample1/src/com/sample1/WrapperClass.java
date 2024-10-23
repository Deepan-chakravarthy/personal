package com.sample1;

public class WrapperClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
              
		  
		int i=30;  
		long l=40;  
		float f=50.0F;  
		double d=60.0D;  
		char c='a';  
		boolean b=true; 
		
		// Auto boxing (primitive into objects)
		
	    Integer i1 = i;
	    Long l1 = l;
	    Float f1 = f;
	    Double d1 = d;
	    Character c1 = c;
	    Boolean b1 = b;
	    
	    System.out.println(i1);
	    System.out.println(l1);
	    System.out.println(f1);
	    System.out.println(d1);
	    System.out.println(c1);
	    System.out.println(b1);
	    
	    
	    // unboxing (objects into primitive)
	    
	    int i2 = i1;
	    long l2 = l1;
	    float f2 = f1;
	    double d2 = d1;
	    char c2 = c1;
	    boolean b2 = b1;
	    

	    System.out.println(i2);
	    System.out.println(l2);
	    System.out.println(f2);
	    System.out.println(d2);
	    System.out.println(c2);
	    System.out.println(b2);
	    
	    //converting int into Integer explicitly
	    
	    Integer i3 = Integer.valueOf(i2);   // primitive into object
	    
	    System.out.println(i3);
	    
	    int i4 = i3.intValue();             // object into primitive
	    
	    System.out.println(i4);
	}

}
