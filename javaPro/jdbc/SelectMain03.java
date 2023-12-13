package kr.ac.kopo.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

import kr.ac.kopo.util.ConnectionFactory;
import kr.ac.kopo.util.JDBCClose;

/*
 * 검색할 이름을 입력 : 강길동
 * 강길동 이름을 가진 회원은 총 2명입니다
 * 
 * 검색할 이름을 입력 : 윤길동
 * 윤길동 이름을 가진 회원은 총 1명입니다
 * 
 * 검색할 이름을 입력 : 허길동
 * 허길동 이름을 가진 회원 총 0명입니다
 */

public class SelectMain03 {

	public static void main(String[] args) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = new ConnectionFactory().getConnection();
			
			Scanner sc = new Scanner(System.in);
			System.out.print("검색할 이름을 입력하세요 : ");
			String name = sc.nextLine();
			
			String sql  = "select count(*)  ";
			       sql += "  from t_test ";
			       sql += " where name = ? ";
			       
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
//			int cnt = rs.getInt("count(*)");
			int cnt = rs.getInt(1);
			System.out.println(cnt + "개");
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
		
	}
}








