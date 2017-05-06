package com.acc.controller.patched;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/result/csp")
public class CspController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input - " + input);
		
		request.setAttribute("userInput", input);
		
		if ("patched".equals(request.getParameter("param")))
			request.setAttribute("patched", "true");
		else
			request.setAttribute("patched", "false");
		
		request.getRequestDispatcher("/WEB-INF/result/csp.jsp")
				.forward(request, response);
		
	}
}