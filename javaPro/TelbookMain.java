package kr.ac.kopo;

import kr.ac.kopo.ui.TelbookUI;

public class TelbookMain {

	public static void main(String[] args) {
		
		TelbookUI ui = new TelbookUI();
		try {
			ui.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}




