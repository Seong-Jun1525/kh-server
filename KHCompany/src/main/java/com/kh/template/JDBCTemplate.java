package com.kh.template;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	
	// Connection 객체 생성
	public static Connection getConnection() {
		Connection conn = null;
		Properties prop = new Properties();
		
		try {
			String filePath = JDBCTemplate.class.getResource("/settings.properties").getPath();
			// 클래스명.class : 클래스 객체로 접근하는 방법. 모든 클래스는 실행 시 Class 객체로 표현됨
			// - 클래스 정보를 확인할 때 사용(리플렉션)
			// - 객체 생성 또는 타입 비교 시 사용
			
			// getResource() : 리소스 파일을 읽어오기 위해 사용된 메서드
			
			prop.load(new FileInputStream(filePath));
			Class.forName(prop.getProperty("driver"));
			conn = DriverManager.getConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
			conn.setAutoCommit(false);
		} catch (IOException | SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}
	
	// commit
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// rollback
	public static void rollback(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) conn.rollback();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// close
	public static void close(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stat) {
		try {
			if(stat != null && !stat.isClosed()) stat.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) rset.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
