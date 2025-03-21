package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestPostServlet
 */
@WebServlet("/test2.do")
public class RequestPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메서드 실행");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("userName");
		String gender = request.getParameter("gender");
		int age = request.getParameter("age") != "" ? Integer.parseInt(request.getParameter("age")) : 0;
		String address = request.getParameter("address");
		double height = Double.parseDouble(request.getParameter("height"));
		String[] foods = request.getParameterValues("food");
		
		
		System.out.println(userName);
		System.out.println(gender);
		System.out.println(age);
		System.out.println(address);
		System.out.println(height);
		if(foods != null) System.out.println(String.join(", ", foods));
		
		/**
		 * 순수 서블릿 방식 : Java 코드 내에서 HTML을 작성
		 * 
		 * JSP(Java Server Page) 방식 : HTML 내에 Java 코드 작성
		 */
		
		// 응답 페이지에서 필요한 데이터를 전달
		// --> 전달하는 공간 : request 객체의 attribute 공간 사용
		
		request.setAttribute("userName", userName);
		request.setAttribute("gender", gender);
		request.setAttribute("age", age);
		request.setAttribute("addr", address);
		request.setAttribute("height", height);
		request.setAttribute("foods", foods);
		
		// 응답 페이지를 jsp에게 맡겨보자
		// jsp 페이지로 응답
		// 	-> RequestDispatcher 변수명 = request.getRequestDispatcher(응답할페이지경로);
		RequestDispatcher view = request.getRequestDispatcher("views/responsePage.jsp");
		
		// 	-> 변수명.forward(request, response);
		view.forward(request, response);
	}

}
