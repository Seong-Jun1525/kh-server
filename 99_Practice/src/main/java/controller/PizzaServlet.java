package controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PizzaServlet
 */
@WebServlet("/practice2_pizza.do")
public class PizzaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PizzaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LocalDate now = LocalDate.now();
		
		System.out.println(now);
		int day = now.getDayOfWeek().getValue();
		String dayStr = "";
		switch(day) {
		case 0:
			dayStr = "일요일";
			break;
		case 1:
			dayStr = "월요일";
			break;
		case 2:
			dayStr = "화요일";
			break;
		case 3:
			dayStr = "수요일";
			break;
		case 4:
			dayStr = "목요일";
			break;
		case 5:
			dayStr = "금요일";
			break;
		case 6:
			dayStr = "토요일";
			break;
		}
		
		request.setAttribute("today", now + " " + dayStr);
		
		request.getRequestDispatcher("views/practice2_pizza.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
