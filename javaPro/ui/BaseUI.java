package kr.ac.kopo.ui;

import java.util.Scanner;

public abstract class BaseUI implements ITeblbookUI {

	private Scanner sc;

	public BaseUI() {
		sc = new Scanner(System.in);
	}
	
	protected String scanStr(String msg) {
		System.out.print(msg);
		return sc.nextLine();
	}
	
	protected int scanInt(String msg) {
		System.out.print(msg);
		int num = Integer.parseInt(sc.nextLine());	// "54" => 54
		return num;
	}
}











