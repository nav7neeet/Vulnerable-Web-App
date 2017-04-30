package com.acc.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/test/roleBasedAuthorization")
public class RoleBasedAuthorization extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		System.out.println("hehehehehehhe");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/admin.jsp");
		rd.forward(request, response);
	}
}
