package com.acc.controller.patched;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/result/XXSSProtection")
public class XXSSProtection extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		
		if ("patched".equals(request.getParameter("param")))
		{
			response.setHeader("X-XSS-Protection", "1");
			request.setAttribute("patched", "true");
		}
		else
		{
			response.setHeader("X-XSS-Protection", "0");
			request.setAttribute("patched", "false");
		}
		
		request.setAttribute("userInput", input);
		
		request.getRequestDispatcher("/WEB-INF/result/XXssProtection.jsp").forward(
				request, response);
		
	}
}
