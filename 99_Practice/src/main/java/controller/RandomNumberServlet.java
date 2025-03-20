package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RandomNumberServlet
 */
@WebServlet("/practice1_random.do")
public class RandomNumberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RandomNumberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO: practice1_result.jsp 페이지로 응답하기
		request.setCharacterEncoding("UTF-8");
		System.out.println("get!!");
		Set<Integer> l = new HashSet<>();
		
		while(true) {
			int r = (int)(Math.random() * 45) + 1;
			l.add(r);
			
			if(l.size() == 6) break;
		}
		
		
		String[] arr = new String[6];
		int j = 0;
		
		Iterator<Integer> i = l.iterator();
		while(i.hasNext()) {
			arr[j++] = i.next() + "";
			System.out.println(arr[j-1]);
		}
		
		request.setAttribute("random", arr);
		RequestDispatcher view = request.getRequestDispatcher("views/practice1_result.jsp");
		
		// 	-> 변수명.forward(request, response);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
