package kr.ac.kopo.ui;

public class SearchOneUI extends BaseUI  {
	
	public void execute() throws Exception {
		int no = scanInt("조회할 글번호를 입력하세요 : ");
		
		System.out.println(no + "번 게시글");
		System.out.println("--------------------------------------------------");
		System.out.println("--------------------------------------------------");
	}
}
