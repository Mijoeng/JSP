package kr.ac.kopo.ui;

import java.util.List;

import kr.ac.kopo.vo.PhoneBookVO;

public class SearchByNameUI extends BaseUI {

	@Override
	public void execute() throws Exception {
		
		String name = scanStr("검색할 이름을 입력하세요 : ");
		List<PhoneBookVO> result = service.searchByName(name);
		
		System.out.println("------------------------------");
		System.out.println("\t검색된 이름[" + name +"] 결과 출력");
		System.out.println("------------------------------");
		System.out.println("번지\t이름\t전화번호");
		System.out.println("------------------------------");
		if(result.isEmpty()) {
			System.out.println("\t조회된 연락처가 없습니다");
		} else {
			for(PhoneBookVO pb : result) {
				System.out.println(pb.getNo() + "\t" + pb.getName()
						+ "\t" + pb.getPhone());
			}
		}
		System.out.println("------------------------------");

	}

}
