package com.acc.controller.patched;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.owasp.esapi.ESAPI;

@WebServlet("/restricted/patched/xss")
public class Xss extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		String context = request.getParameter("context");
		String output = "";
		System.out.println("user input - " + input);
		
		request.setAttribute("patched", "true");
		
		switch (context)
		{
			case "body":
				output = ESAPI.encoder().encodeForHTML(input);
				request.setAttribute("userInput", output);
				request.getRequestDispatcher("/WEB-INF/result/xssBody.jsp").forward(
						request, response);
				break;
			
			case "attribute":
				output = ESAPI.encoder().encodeForHTMLAttribute(input);
				request.setAttribute("userInput", output);
				request.getRequestDispatcher("/WEB-INF/result/xssAttribute.jsp").forward(
						request, response);
				break;
			
			case "hidden":
				output = ESAPI.encoder().encodeForHTMLAttribute(input);
				request.setAttribute("userInput", output);
				request.getRequestDispatcher("/WEB-INF/result/xssHiddenVar.jsp").forward(
						request, response);
				break;
			
			case "js":
				output = ESAPI.encoder().encodeForJavaScript(input);
				request.setAttribute("userInput", output);
				request.getRequestDispatcher("/WEB-INF/result/xssJS.jsp").forward(
						request, response);
				break;
			
			default:
				break;
		}
	}
}
