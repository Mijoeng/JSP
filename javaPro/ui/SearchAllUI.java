package kr.ac.kopo.ui;

import java.util.List;

import kr.ac.kopo.PhoneBookServiceFactory;
import kr.ac.kopo.service.PhoneBookService;
import kr.ac.kopo.vo.PhoneBookVO;

public class SearchAllUI extends BaseUI {

	
	@Override
	public void execute() throws Exception {
		List<PhoneBookVO> list = service.getPhoneBookList();
		System.out.println("------------------------------");
		System.out.println("\t전화번호부 목록 출력");
		System.out.println("------------------------------");
		System.out.println("번지\t이름\t전화번호");
		System.out.println("------------------------------");
		if(list.size() == 0) {
			System.out.println("  등록된 전화번호부가 없습니다");
		} else {
				
			for(PhoneBookVO phoneVO : list) {
				System.out.println(phoneVO.getNo() + "\t" +
						phoneVO.getName() + "\t" 
						+ phoneVO.getPhone());
			}
		}
		System.out.println("------------------------------");
	}

}





