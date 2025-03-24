package com.kh.employee.service;

// static 메서드 전체 import. 클래스명 생략하고 호출 가능
import static com.kh.template.JDBCTemplate.close;
import static com.kh.template.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.employee.model.dao.EmployeeDAO;
import com.kh.employee.model.vo.Employee;

public class EmployeeServiceImpl implements EmployeeService {
	private EmployeeDAO empDAO = new EmployeeDAO();

	/**
	 * 사원 전체 목록 조회
	 */
	@Override
	public ArrayList<Employee> selectEmployeeList() {
		// Connection 객체 생성
		// DAO로 Connection 객체 전달 (필요한 기능 요청)
		// Connection 객체 반납
		// 결과를 리턴
		Connection conn = getConnection(); // static 메서드 자체를 import 했으므로 클래스명이 없어짐
		
		ArrayList<Employee> eList = empDAO.selectEmployeeList(conn);
		
		close(conn);
		
		return eList;
	}

	@Override
	public Employee selectEmployee(int empId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertEmployee(Employee e) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateEmployee(Employee e) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteEmployee(int empId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
