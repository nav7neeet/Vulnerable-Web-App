package com.acc.result;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/result/bankPortal")
public class ClickJacking extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		if ("patched".equals(request.getParameter("path")))
			response.addHeader("X-Frame-Options", "deny");
		else
			
			response.addHeader("X-Frame-Options", "SAMEORIGIN"); 
		
		request.getRequestDispatcher("/WEB-INF/test/bankportal.jsp").forward(request,
				response);
	}
}
