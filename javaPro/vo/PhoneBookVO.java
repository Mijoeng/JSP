package kr.ac.kopo.vo;

/*
 * VO클래스 생성순서
 * 1. 멤버변수 정의
 * 2. 기본생성자 생성
 * 3. 매개변수가지는 생성자 생성
 * 4. getter/setter 메소드 생성
 * 5. toString() 메소드 오버라이드
 */

public class PhoneBookVO {

	private int no;
	private String name;
	private String phone;
	
	public PhoneBookVO() {
		super();
	}

	public PhoneBookVO(int no, String name, String phone) {
		super();
		this.no = no;
		this.name = name;
		this.phone = phone;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "PhoneBookVO [no=" + no + ", name=" + name + ", phone=" + phone + "]";
	}
	
}
