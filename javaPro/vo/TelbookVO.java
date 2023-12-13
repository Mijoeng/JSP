package kr.ac.kopo.vo;
/*
 	VO 클래스 생성 순서
 	1. 멤버변수 정의
 	2. 생성자 정의(기본생성자, 매개변수를 가지는 생성자)
 	3. getter/setter 생성
 	4. toString() 오버라이드
 */
public class TelbookVO {

	private int no;
	private String name;
	private String phone;

	public TelbookVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TelbookVO(int no, String name, String phone) {
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
		return "TelbookVO [no=" + no + ", name=" + name + ", phone=" + phone + "]";
	}
	

}













