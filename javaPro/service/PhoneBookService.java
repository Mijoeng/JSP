package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.PhoneBookSequence;
import kr.ac.kopo.dao.PhoneBookDAO;
import kr.ac.kopo.vo.PhoneBookVO;

public class PhoneBookService {

	private PhoneBookDAO dao;
	
	public PhoneBookService() {
		dao = new PhoneBookDAO();
	}

	public void addPhoneBook(PhoneBookVO phoneVO) {
		
		// 추출된 번지 저장
		phoneVO.setNo(PhoneBookSequence.getNo());
		
		dao.insertBook(phoneVO);
	}
	
	public List<PhoneBookVO> getPhoneBookList() {
		List<PhoneBookVO> list = dao.selectAll();
		return list;
	}
	
	public List<PhoneBookVO> searchByName(String name) {
		List<PhoneBookVO> list = dao.selectByName(name);
		return list;
	}
}





