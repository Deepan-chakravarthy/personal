package com.sampleProject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class Test {

	public static void main(String[] args) throws IOException {
		System.out.println("welcome");
		List<Register> list = new ArrayList<>();
		Map<Integer, Marks> map = new HashMap<>();
		choice(list, map);

	}

	public static void choice(List<Register> list, Map<Integer, Marks> map) throws IOException {
		try {
			System.out.println("Enter: \n 1 to register \n 2 to view all record \n 3 to total number \n 4 to edit details \n 5 to delete \n 6 to Marks \n 0 to exit");
			try (Scanner sc = new Scanner(System.in)) {
				int c = sc.nextInt();
				Register r = new Register();
				switch (c) {

				case 1:
					r.addRollno(list);
					list.add(r);
					System.out.println("successfully registered \n");
					choice(list, map);
					break;
				case 2:
					for (Register reg : list) {
						System.out.println("Rollno:" + reg.rollno + " Name:" + reg.name + " Age:" + reg.age + " Mobile:"
								+ reg.mobile + "\n");
					}
					choice(list, map);
					break;
				case 3:
					System.out.println(list.size() + "\n");
					choice(list, map);
					break;
				case 4:
					System.out.println("Enter rollno:");
					int editrollno = sc.nextInt();
					int index = -1;
					for (Register register : list) {
						if (editrollno == register.rollno) {
							index = list.indexOf(register);
						}
					}
					System.out.println("Enter:\n 1 to edit name \n 2 to edit age \n 3 to edit mobile");
					int editoption = sc.nextInt();
					sc.nextLine();
					switch (editoption) {
					case 1:
						System.out.println("Enter new name:");
						list.get(index).name = sc.nextLine();
						break;
					case 2:
						System.out.println("Enter new age:");
						list.get(index).age = sc.nextInt();
						break;
					case 3:
						System.out.println("Enter new mobile:");
						list.get(index).mobile = sc.nextLong();
						break;
					default:
						System.out.println("Ivalid input");
					}
					System.out.println("updated successfully \n");
					choice(list, map);
					break;
				case 5:
					int del = -1;
					System.out.println("Enter rollno to delete");
					int delrollno = sc.nextInt();
					for (Register record : list) {
						if (delrollno == record.rollno) {
							del = list.indexOf(record);
						} else {
							System.out.println("No matching record \n");
						}
					}
					list.remove(del);
					System.out.println("rollno: " + delrollno + " is successfully removed \n");
					choice(list, map);
					break;
				case 6:
					System.out.println("Marks");
					addMarks(list, map);
					break;
				case 0:
					System.out.println("thank you");
					break;
				default:
					System.out.println("Enter Number 0-6 \n");
					choice(list, map);
					break;
				}
			}
		}
		catch (Exception e) {
		   System.out.println("Invalid Input \n");
		   choice(list, map);
		}
	}

	public static void addMarks(List<Register> list, Map<Integer, Marks> map) throws IOException {
		try {
			System.out.println(
					"Enter: \n 1 to add marks \n 2 to view all marks \n 3 to particular record with mark \n 0 back to main menu");
			try (Scanner sc = new Scanner(System.in)) {
				int c = sc.nextInt();
				Marks ma = new Marks();
				switch (c) {
				case 1:
					System.out.println("Enter rollno:");
					int rollno = sc.nextInt();
					boolean check = false;
					for (Register record : list) {
						if (rollno == record.rollno) {
							check = true;
						}
					}
					if (check == true) {
						ma.adding();
						map.put(rollno, ma);
						System.out.println("Marks successfully added \n");
					} else {
						System.out.println(rollno + " is not registered \n");
					}

					addMarks(list, map);
					break;
				case 2:
					for (Map.Entry<Integer, Marks> entry : map.entrySet()) {
						int rn = entry.getKey();
						Marks mk = entry.getValue();
						System.out.println("Roll no: " + rn);
						System.out.println("tamil " + mk.tam);
						System.out.println("english " + mk.eng);
						System.out.println("maths " + mk.maths);
						System.out.println("science " + mk.sci);
						System.out.println("socail " + mk.soc + "\n");
					}
					addMarks(list, map);
					break;
				case 3:
					System.out.println("Enter rollno:");
					int viewrollno = sc.nextInt();
					int index = -1;
					boolean check1 = false;
					for (Register record : list) {
						if (viewrollno == record.rollno) {
							check1 = true;
							index = list.indexOf(record);
						}
					}
					if(check1 == true) {
						System.out.println("Rollno: " + list.get(index).rollno + " Name: " + list.get(index).name + " Age: "
								+ list.get(index).age + " Mobile: " + list.get(index).mobile);
						for (Map.Entry<Integer, Marks> entry : map.entrySet()) {
							int key = entry.getKey();
							if (viewrollno == key) {
								Marks mk = entry.getValue();
								System.out.println("tamil " + mk.tam);
								System.out.println("english " + mk.eng);
								System.out.println("maths " + mk.maths);
								System.out.println("science " + mk.sci);
								System.out.println("socail " + mk.soc + "\n");
				            }
				        }
					}else {
						System.out.println(viewrollno+" is not registered \n");
					}
				    addMarks(list, map);
					break;
				case 0:
					choice(list, map);
					break;
				default:
					System.out.println("Enter Number 0-3");
					break;
				}
			}
		}
		catch (Exception e) {
			   System.out.println("Invalid Input \n");
			   addMarks(list, map);
			}
      }

}
