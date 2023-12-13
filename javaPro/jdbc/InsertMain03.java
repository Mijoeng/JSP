package kr.ac.kopo.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Scanner;

import kr.ac.kopo.util.ConnectionFactory;
import kr.ac.kopo.util.JDBCClose;

public class InsertMain03 {

	public static void main(String[] args) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// 1, 2단계
			conn = new ConnectionFactory().getConnection();
			
			// 3단계
			Scanner sc = new Scanner(System.in);
			System.out.print("아이디 입력 : ");
			String id = sc.nextLine();
			System.out.print("이름 입력 : ");
			String name = sc.nextLine();
			
			String sql  = "insert into t_test(id, name) ";
			       sql += " values(?, ?) ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			
			// 4단계
			int cnt = pstmt.executeUpdate();
			System.out.println("총 " + cnt + "개 행 삽입");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 5단계
			JDBCClose.close(pstmt, conn);
		}
		
	}
}
