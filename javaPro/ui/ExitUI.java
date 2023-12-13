package kr.ac.kopo.ui;

public class ExitUI extends BaseUI{

	@Override
	public void execute() throws Exception {
		System.out.println("------------------------------------");
		System.out.println("\t전화번호부 프로그램을 종료합니다");
		System.out.println("------------------------------------");
		System.exit(0);	// 프로그램 종료하는 메소드
	}
}
