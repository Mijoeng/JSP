package kr.ac.kopo.ui;

import java.util.Scanner;

/**
 * 연락처를 수정을 위한 화면 UI 기능클래스
 * @author User
 *
 */
public class UpdateUI extends BaseUI {
	
	private Scanner sc;

	public UpdateUI() {
		sc = new Scanner(System.in);
	}

	@Override
	public void execute() throws Exception {
		System.out.print("수정할 이름을 입력 : ");
		String name = sc.nextLine();
		System.out.print("수정할 전화번호를 입력 : ");
		String phone = sc.nextLine();
		
		System.out.println("연락처 수정이 완료되었습니다");
	}
}
