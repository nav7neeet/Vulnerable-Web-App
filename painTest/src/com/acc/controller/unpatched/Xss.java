package com.acc.controller.unpatched;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/unpatched/xss")
public class Xss extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		String context = request.getParameter("context");
		System.out.println("user input - " + input);
		
		switch (context)
		{
			case "body":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/result/xssBody.jsp").forward(
						request, response);
				break;
			
			case "attribute":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/result/xssAttribute.jsp").forward(
						request, response);
				break;
			
			case "hidden":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/result/xssHiddenVar.jsp").forward(
						request, response);
				break;
			
			case "js":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/result/xssJS.jsp").forward(
						request, response);
				break;
			
			case "css":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/result/xssCSS.jsp").forward(
						request, response);
				break;
			
			default:
				break;
		}
		
	}
}
