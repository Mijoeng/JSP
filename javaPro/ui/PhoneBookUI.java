package kr.ac.kopo.ui;

public class PhoneBookUI extends BaseUI {

	private int choiceMenu() {
		System.out.println("***** MENU *****");
		System.out.println("1. 전체전화번호 목록 조회");
		System.out.println("2. 새연락처 등록");
		System.out.println("3. 이름으로 검색");
		System.out.println("4. 전화번호로 검색");
		System.out.println("5. 연락처 수정");
		System.out.println("6. 연락처 삭제");
		System.out.println("0. 종료");
		int type = scanInt("항목을 선택하세요 : ");
		return type;
	}
	
	@Override
	public void execute() throws Exception {
		while(true) {
			int type = choiceMenu();
			IPhoneBookUI ui = null;
			switch (type) {
			case 1:
				ui = new SearchAllUI();
				break;
			case 2:
				ui = new AddUI();
				break;
			case 3:
				ui = new SearchByNameUI();
				break;
			case 4:
				break;
			case 5:
				break;
			case 6:
				break;
			case 0:
				ui = new ExitUI();
				break;
			}
			if (ui != null) {
				ui.execute();
			} else {
				System.out.println("항목을 잘못선택하셨습니다");
			}
		}
	}

	
}
