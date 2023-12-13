package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.vo.PhoneBookVO;

/**
 * 전화번호부의 데이터를 삽입/조회/수정/삭제 목적인 기능클래스
 *
 */
public class PhoneBookDAO {

	private List<PhoneBookVO> list;

	public PhoneBookDAO() {
		list = new ArrayList<PhoneBookVO>();
	}
	
	public void insertBook(PhoneBookVO phoneVO) {
		list.add(phoneVO);
	}
	
	public List<PhoneBookVO> selectAll() {
		return list;
	}

	public List<PhoneBookVO> selectByName(String name) {

		List<PhoneBookVO> result = new ArrayList<>();
		
		for(PhoneBookVO pb : list) {
			if(pb.getName().equals(name)) {
				result.add(pb);
			}
		}
		
		return result;
	}
	
}









