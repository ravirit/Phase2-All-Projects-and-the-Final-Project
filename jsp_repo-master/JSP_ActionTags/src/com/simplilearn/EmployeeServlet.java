package com.simplilearn;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public EmployeeServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("Employee Servlet...");
		
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		int eid = Integer.parseInt(request.getParameter("eid"));
		String ename = request.getParameter("ename");
		double salary = Double.parseDouble(request.getParameter("salary"));
		
		Employee employee = new Employee();
		// setters or  param constructor
		
			employee.setEid(eid);  
			employee.setEname(ename);
			employee.setSalary(salary);
			
		
			System.out.println(employee.getEname());
			
		HttpSession session =	request.getSession();

				session.setAttribute("employee", employee);
		
		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");

		rd.forward(request, response);

		//rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
