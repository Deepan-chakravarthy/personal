package interfacedemo;

import java.util.Optional;

public class FunctionalInterfaceDemo {
	
	public static void main(String[] args) {
		InterfaceDemo interfaceDemo = (str) -> System.out.println(str);
		interfaceDemo.message("-----Implemented by Lambda Expression-----");
		InterfaceDemo interfaceDemo2 = System.out :: println;
        interfaceDemo2.message("\n-----Implemented by Method Reference------");
        
        Integer a = null;
        System.out.println("\nBefore using Optional class : " + a);
        Optional<Integer> optional = Optional.ofNullable(a);
        System.out.println("After using Optional class : " + optional.orElse(0));
	}
}
