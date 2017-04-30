package com.acc.controller.unpatched;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/unpatched/XXSSProtection")
public class XXSSProtection extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		
		response.setHeader("X-XSS-Protection", "0");
		request.setAttribute("userInput", input);
		request.setAttribute("patched", "false");
		
		request.getRequestDispatcher("/WEB-INF/result/XXssProtection.jsp").forward(
				request, response);
		
	}
	
}
