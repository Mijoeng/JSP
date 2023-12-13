package kr.ac.kopo.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Scanner;

import kr.ac.kopo.util.ConnectionFactory;
import kr.ac.kopo.util.JDBCClose;

/*
 * 수정하려는 아이디를 입력 : kim
 * 수정할 이름을 입력 : 김길순
 * 
 * 아이디가 kim의 이름을 "김길순" 변경 
 */

public class UpdateMain01 {

	public static void main(String[] args) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = new ConnectionFactory().getConnection();
			
			Scanner sc = new Scanner(System.in);
			System.out.print("수정할 아이디를 입력 : ");
			String id = sc.nextLine();
			System.out.print("수정할 이름을 입력 : ");
			String name = sc.nextLine();

			String sql  = "update t_test ";
			       sql += "   set name = ? ";
			       sql += " where id = ? ";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			
			int cnt = pstmt.executeUpdate();
			if(cnt != 0) {
				System.out.println("수정완료");
			} else {
				System.out.println("입력하신 아이디[" + id + "]는 없습니다");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
		
	}
}








