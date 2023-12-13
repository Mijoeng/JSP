package kr.ac.kopo;

import kr.ac.kopo.ui.PhoneBookUI;

public class PhoneBookMain {

	public static void main(String[] args) {
		
		try {
			PhoneBookUI ui = new PhoneBookUI();
			ui.execute();	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
