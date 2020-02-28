package com.nav.result;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.owasp.esapi.ESAPI;

@WebServlet("/result/xss")
public class Xss extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
			IOException
	{

		if ("patched".equals(request.getParameter("param"))) patched(
				request, response);
		else
			unPatched(request, response);
	}

	void patched(HttpServletRequest request, HttpServletResponse response)
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
			request.getRequestDispatcher("/result/xssBody.jsp")
					.forward(request, response);
			break;

		case "attribute":
			output = ESAPI.encoder().encodeForHTMLAttribute(input);
			request.setAttribute("userInput", output);
			request.getRequestDispatcher(
					"/result/xssAttribute.jsp").forward(
					request, response);
			break;

		case "hidden":
			output = ESAPI.encoder().encodeForHTMLAttribute(input);
			request.setAttribute("userInput", output);
			request.getRequestDispatcher(
					"/result/xssHiddenVar.jsp").forward(
					request, response);
			break;

		case "js":
			output = ESAPI.encoder().encodeForJavaScript(input);
			request.setAttribute("userInput", output);
			request.getRequestDispatcher("/result/xssJS.jsp")
					.forward(request, response);
			break;
			
		case "css":
			request.setAttribute("userInput", input);
			request.getRequestDispatcher("/result/xssCSS.jsp")
					.forward(request, response);
			break;
			
		case "dom":
			output = ESAPI.encoder().encodeForJavaScript(input);
			request.setAttribute("userInput", output);
			request.getRequestDispatcher("/result/xssDOM.jsp")
					.forward(request, response);
			break;

		default:
			break;
		}
	}

	void unPatched(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		String context = request.getParameter("context");
		System.out.println("user input - " + input);

		switch (context)
		{
		case "body":
			request.setAttribute("userInput", input);
			request.getRequestDispatcher("/result/xssBody.jsp")
					.forward(request, response);
			break;

		case "attribute":
			request.setAttribute("userInput", input);
			request.getRequestDispatcher(
					"/result/xssAttribute.jsp").forward(
					request, response);
			break;

		case "hidden":
			request.setAttribute("userInput", input);
			request.getRequestDispatcher(
					"/result/xssHiddenVar.jsp").forward(
					request, response);
			break;

		case "js":
			request.setAttribute("userInput", input);
			request.getRequestDispatcher("/result/xssJS.jsp")
					.forward(request, response);
			break;

		case "css":
			request.setAttribute("userInput", input);
			request.getRequestDispatcher("/result/xssCSS.jsp")
					.forward(request, response);
			break;
		
		case "dom":
			request.setAttribute("userInput", input);
			request.getRequestDispatcher("/result/xssDom.jsp")
					.forward(request, response);
			break;

		default:
			break;
		}
	}
}