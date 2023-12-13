package kr.ac.kopo.ui;


public class BoardUI extends BaseUI {
	
	public void execute() throws Exception {
		while(true) {
			System.out.println();
			String type = menu();
			IBoardUI ui = null;
			switch(type) {
			case "1" :
				ui = new SearchUI();      
				break;
			case "2" :
				ui = new SearchOneUI();  
				break;
			case "3" :
				ui = new AddUI();         
				break;
			case "4" :
				ui = new UpdateUI();     
				break;
			case "5" :
				ui = new DeleteUI();     
				break;
			case "0" :
				ui = new ExitUI();       
			}    // end of switch block
			
			if (ui != null) {
				ui.execute();
			}
			else System.out.println("�߸��� �޴��� ���õǾ����ϴ�.");
		}	// end of while loop
	}  // end of process method
	
	private String menu() {
		System.out.println("--------------------------------------------------");
		System.out.println("1. 전체게시물 조회   ");
		System.out.println("2. 글번호 조회   ");
		System.out.println("3. 글등록   ");
		System.out.println("4. 글수정   ");
		System.out.println("5. 글삭제   ");
		System.out.println("0. 종료     ");
		System.out.println("--------------------------------------------------");
		return scanStr("메뉴 중 처리할 항목을 선택하세요 : ");
	}
}















