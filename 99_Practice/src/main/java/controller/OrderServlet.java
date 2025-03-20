package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/order.do")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("post!!");
		
		String pizzaInfo = request.getParameter("pizza");
		String[] topingArr = request.getParameterValues("toping");
		String[] sideArr = request.getParameterValues("side");

		String pizzaName = pizzaInfo.split(" ")[0];
		int pizzaValue = Integer.parseInt(pizzaInfo.split(" ")[1]);

		String[] topingStr = new String[topingArr.length];
		int topingSum = 0;
		
		for(int i = 0; i < topingArr.length; i++) {
			topingStr[i] = topingArr[i].split(" ")[0]; 
			topingSum += Integer.parseInt(topingArr[i].split(" ")[1]);
		}

		String[] sideStr = new String[sideArr.length];
		int sideSum = 0;
		
		for(int i = 0; i < sideArr.length; i++) {
			sideStr[i] = sideArr[i].split(" ")[0];
			sideSum += Integer.parseInt(sideArr[i].split(" ")[1]);
		}
		
		int total = pizzaValue + sideSum + topingSum;
		
		request.setAttribute("pizzaName", pizzaName);
		request.setAttribute("topingStr", topingStr);
		request.setAttribute("sideStr", sideStr);
		request.setAttribute("total", total);
		
		request.getRequestDispatcher("views/pizzaResult.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
