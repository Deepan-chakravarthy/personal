package com.apo.demo;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j2;

@Aspect
@Log4j2
@Component
public class CallTracker {

	@Pointcut("within(com..controller.*)") 
	public void controllerMessage() {
	}
	
	@Pointcut("within(com..service.*)")
	public void serviceMessage() {	
	}
	
	@Before("controllerMessage()")
	public void consoleLogBefore(JoinPoint joinPoint) {
		log.info("@before");
		System.out.println(joinPoint.getSignature().getName() + " in controller invoked");
	}
	
	@After("controllerMessage()")
	public void consoleLogAfter() {
		log.info("@after");
		System.out.println("Employee Successfully saved --> Controller");
	}
	
	@Around("serviceMessage()")
	public Object consoleAround(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
		log.info("@around");
		System.out.println(proceedingJoinPoint.getSignature().getName() + " in  service invoked");
		Object returnObject = proceedingJoinPoint.proceed();
		System.out.println("Employee Successfully saved --> Service");
		return returnObject;
	}
	
}
