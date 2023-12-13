package kr.ac.kopo.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;

import kr.ac.kopo.util.ConnectionFactory;

public class SelectMain02 {

	public static void main(String[] args) {
		
		String sql = "select * from t_test";
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
		} catch(Exception e) {
			e.printStackTrace();
		}

		
	}
}
