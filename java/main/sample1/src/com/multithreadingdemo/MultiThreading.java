package com.multithreadingdemo;

public class MultiThreading {

	public static void main(String[] args) throws InterruptedException {
		Runnable runnable = new Sample();
		Thread thread = new Thread(runnable);
		thread.start();
		thread.setName("abcd");
		Sample2 sample2 = new Sample2();
		sample2.start();
		sample2.join();
		System.out.println("\n" +thread.getName() + " "+ thread.getState());
		System.out.println("\n" + sample2.getName() + " " + sample2.isAlive());
		System.out.println("\n" + thread.getName() + " " + thread.isAlive());
	}
}

class Sample implements Runnable {
	public void run() {
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("\nThread is created by implementing runnable interface");
	}
}

class Sample2 extends Thread {
	public void run() {
		System.out.println("Thread is created by extending thread class");
	}
}