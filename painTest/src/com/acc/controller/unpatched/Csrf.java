package com.acc.controller.unpatched;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/unpatched/csrf")
public class Csrf extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		request.setAttribute("test", "unpatched");
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/result/csrfResult.jsp");
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		request.setAttribute("test", "unpatched");
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/result/csrfResult.jsp");
		rd.forward(request, response);
	}
	
}
