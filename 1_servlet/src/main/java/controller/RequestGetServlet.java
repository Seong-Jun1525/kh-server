package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestGetServlet
 */
@WebServlet("/test.do")
public class RequestGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestGetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * 첫 번째 매개변수 (HttpServletRequest) 에는 요청 시 전달된 내용들이 담겨져 있다
		 * 	=> 사용자가 입력한 값, 요청방식, 요청자의 ip주소 등등
		 * 
		 * 두 번째 매개변수 (HttpServletResponse) 에는 요청에 대한 처리 후 응답할 때 사용할 객체
		 * 
		 * - 요청 시 전달된 데이터 추출 (request 객체의 parameter 영역 안에 데이터가 담겨져 있다
		 * 		request.getParameter("키값"):String -> 키값에 해당하는 데이터를 반환
		 */
		System.out.println("Get 요청이 들어옴!");
		
		String userName = request.getParameter("userName"); // 입력된 값이 없을 경우 빈 문자열이 전달된다
		System.out.println(userName);
		
		String gender = request.getParameter("gender"); // 전달된 값이 없을 경우 null값이 전달된다
		System.out.println(gender);
		
		int age = 
				request.getParameter("age") != "" 
					? Integer.parseInt(request.getParameter("age")) 
							: 0; // 입력된 값이 없을 경우 빈 문자열이 전달된다
		System.out.println(age);
		
		String address = request.getParameter("address");
		System.out.println(address);
		
		double height = Double.parseDouble(request.getParameter("height"));
		System.out.println(height);
		
		
		// 같은 키 값으로 전달된 데이터를 추출
		// request.getParameterValues("키값"):String[]
		String[] foods = request.getParameterValues("food");
		
		if(foods != null) System.out.println(String.join(",", foods));
		else System.out.println("좋아하는 음식이 없습니다");
		// Controller(Servlet) --> DAO > DB 작업
		
		// 응답 데이터의 문서 형식 및 인코딩 방식 설정
		response.setContentType("text/html; charset=UTF-8");
		
		// * 응답 시 사용할 스트림 객체 (PrintWriter --> 응답 페이지 작성)
		PrintWriter pw = response.getWriter();

		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		
		pw.println("<style>");
		pw.println("span {color:red;}");
		pw.println("</style>");
		
		pw.println("<body>");
		
		pw.println("<h2>응답페이지</h2>");
		pw.printf("<span>%s</span>님은 ", userName);
		pw.printf("<span>%s</span>에 살고 있습니다.", address);

		if(foods == null) pw.println("좋아하는 음식이 없습니다.");
		else pw.printf("좋아하는 음식 : <span>%s</span>", String.join(" / ", foods));
		
		pw.println("</body>");
		
		pw.println("</head>");
		pw.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
