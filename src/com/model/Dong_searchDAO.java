package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Dong_searchDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	Main_filterDTO Mfdto = null;
	ArrayList<Main_filterDTO> DongSearchList = null;

	
	public void conn() { // DB 연결

		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "hr";
		String db_pw = "hr";

		conn = DriverManager.getConnection(db_url, db_id, db_pw);
} catch (Exception e) {
	e.printStackTrace();
}

}

public void close() { // DB 연결 해제

	try {
		if (rs != null) {
			rs.close();
		}
		if (psmt != null) {
			psmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

public ArrayList<Main_filterDTO> search(Dong_searchDTO dto) {
	
	DongSearchList = new ArrayList<Main_filterDTO>(); // 기본 필터 검색
	
	conn();
	
	try {
		String sql = "select * from (select * from a_maemae) where Dong like";
		psmt = conn.prepareStatement(sql+"\'%"+dto.getSearch()+"%\' and rownum <= 100");
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			
			String maemae_num = rs.getString(1);
			String dong = rs.getString(2);
			String price = rs.getString(3);
			int build_year = rs.getInt(4);
			String apt_name= rs.getString(5);
			int year = rs.getInt(6);
			int month = rs.getInt(7);
			int day = rs.getInt(8);
			int apt_size = rs.getInt(9);
			int floor = rs.getInt(10);
			
			
			Mfdto = new Main_filterDTO(maemae_num,dong,price,build_year,apt_name,year,month,day,apt_size,floor);
			DongSearchList.add(Mfdto);
			
		}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return DongSearchList;
}
	
}
