package kr.ac.kopo.ui;

import java.util.Scanner;

public class TelbookUI extends BaseUI {

	private String choiceMenu() {
		
		System.out.println("*** 메뉴 ***");
		System.out.println("1. 전체 전화전호부 출력");
		System.out.println("2. 새연락처 등록");
		System.out.println("3. 이름으로 검색");
		System.out.println("4. 전화번호로 검색");
		System.out.println("5. 연락처 수정");
		System.out.println("6. 연락처 삭제");
		System.out.println("0. 종료");
		
		String type = scanStr("원하는 항목을 선택하세요 : ");
		
		return type;
	}
	
	public void execute() throws Exception {

		while (true) {
	
			ITeblbookUI ui = null;
			String type = choiceMenu();
			
			switch (type) {
			case "1":
				System.out.println("전체 전화번호부 출력을 선택했습니다");
				break;
			case "2":
				ui = new AddUI();
				break;
			case "3":
				//System.out.print("검색할 이름을 입력 : ");
				//String name = sc.nextLine();
				
				break;
			case "4":
				System.out.println("전화번호로 검색을 선택했습니다");
				break;
			case "5":
				ui = new UpdateUI();
				break;
			case "6":
				ui = new DeleteUI();
				break;
			case "0":
				ui = new ExitUI();
				break;
			}
			if(ui != null) {
				ui.execute();
			} else {
				System.out.println("잘못선택하셨습니다.");
			}
		}
	}
}







