package kr.ac.kopo.ui;

import java.util.Scanner;

public class AddUI extends BaseUI {

	@Override
	public void execute() throws Exception {
		
		System.out.println("**** 전화번호부 등록 ****");
		
		String name = scanStr("등록할 이름을 입력 : ");
		String phone = scanStr("등록할 전화번호를 입력 : ");
		
		System.out.println("연락처 등록을 완료하였습니다");
	}
}
