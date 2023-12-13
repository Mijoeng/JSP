package kr.ac.kopo.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 	JDBC 순서
 	1. 오라클드라이버 로딩
 	2. DriverManager를 이용하여 DB 접속 후 Connection 객체 얻기
 	3. Statmenet객체 sql 삽입 후 실행
 	4. 결과얻기
 	5. DB접속 종료
 */

public class DBTestMain {

	public static void main(String[] args) {

		try {
			// 1단계 :  오라클 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 로딩 완료...");
			
			// 2단계 : db접속하여 Connection객체 얻어오기
			Connection conn 
				= DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe", 
						"hr",
						"hr"
				);
			System.out.println("db접속 성공!!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}









