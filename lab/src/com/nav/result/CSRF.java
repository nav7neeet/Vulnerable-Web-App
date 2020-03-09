package com.nav.result;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/result/csrf")
public class CSRF extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		if ("patched".equals(request.getParameter("param"))) patchedGet(
				request, response);
		else
			unPatchedGet(request, response);
	}
	
	void patchedGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		String antiCSRFToken = request.getParameter("antiCSRFToken");
		System.out.println("user input Get- " + input);
		System.out.println("session creation time - " + antiCSRFToken);
		if (antiCSRFToken == null)
		{
			request.setAttribute("errorMessage", "CSRF detected!!");
		}
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/result/csrfResult.jsp");
		rd.forward(request, response);
	}
	
	void unPatchedGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		request.setAttribute("test", "unpatched");
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/result/csrfResult.jsp");
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		if ("patched".equals(request.getParameter("param"))) patchedPost(
				request, response);
		else
			unPatchedPost(request, response);
	}
	
	void patchedPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		String antiCSRFToken = request.getParameter("antiCSRFToken");
		System.out.println("user input Post - " + input);
		System.out.println("session creation time - " + antiCSRFToken);
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/views/csrfResult.jsp");
		rd.forward(request, response);
	}
	
	void unPatchedPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		request.setAttribute("test", "unpatched");
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/result/csrfResult.jsp");
		rd.forward(request, response);
	}
}
