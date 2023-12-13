package kr.ac.kopo;

/**
 * 전화번호부의 번지를 추출
 * @author User
 *
 */
public class PhoneBookSequence {
	private static int no = 1;
	
	public static int getNo() {
		return PhoneBookSequence.no++;
	}
}








