package kr.ac.kopo.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

import kr.ac.kopo.util.ConnectionFactory;

/*
	검색할 이름을 입력 : 강길동
	
	ID      NAME
	kang	강길동
	gogo	강길동
*/
public class SelectMain04 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("검색할 이름을 입력 : ");
		String name = sc.nextLine();
		
		StringBuilder sql = new StringBuilder();
		sql.append("select id, name ");
		sql.append("  from t_test ");
		sql.append(" where name = ? ");
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		) {
			
			pstmt.setString(1, name);
			ResultSet rs = pstmt.executeQuery();
			System.out.println("----------------------");
			System.out.println("ID\tNAME");
			System.out.println("----------------------");
			boolean flag = false;
			while(rs.next()) {
				flag = true;
				String id = rs.getString("id");
				String name2 = rs.getString("name");
				System.out.println(id + "\t" + name2);
			}
			if(!flag) {
				System.out.println("검색하신 이름[" 
						+ name + "]은 존재하지 않습니다");
			}
			System.out.println("----------------------");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}




