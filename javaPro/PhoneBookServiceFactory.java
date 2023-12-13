package kr.ac.kopo;

import kr.ac.kopo.service.PhoneBookService;

public class PhoneBookServiceFactory {

	private static PhoneBookService service = null;
	
	public static PhoneBookService getInstance() {
		
		if(service == null)
			service = new PhoneBookService();
		
		return service;
	}
}




