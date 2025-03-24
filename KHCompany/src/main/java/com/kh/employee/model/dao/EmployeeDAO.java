package com.kh.employee.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.employee.model.vo.Employee;
import com.kh.template.JDBCTemplate;

public class EmployeeDAO {
	private PreparedStatement pstmt = null;
	private ResultSet rset = null;
	private Properties prop = new Properties();
	
	
	public EmployeeDAO() {
		try {
			String filePath = EmployeeDAO.class.getResource("/sql/employee-mapper.xml").getPath();
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ArrayList<Employee> selectEmployeeList(Connection conn) {
		ArrayList<Employee> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(prop.getProperty("selectEmployeeList"));
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Employee(rset.getInt("EMP_ID"),
										rset.getString("EMP_NAME"),
										rset.getString("DEPT_TITLE"),
										rset.getString("JOB_NAME"),
										rset.getString("HIRE_DATE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return list;
	}

}
