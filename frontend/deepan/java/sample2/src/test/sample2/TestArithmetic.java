package test.sample2;

import org.junit.Test;

import sample2.Arithmetic;
import static org.junit.Assert.assertEquals;


public class TestArithmetic {
       private Arithmetic arithmetic = new Arithmetic();
       
       @Test
       public void testAddition() {
    	   int actualResult = arithmetic.addition(55, 45);
    
    	   int expectedresult = 100;
    	   assertEquals(expectedresult,actualResult);
       }

	
}



