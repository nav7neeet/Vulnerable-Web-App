package com.acc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutController extends HttpServlet
{
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
			IOException
	{
		HttpSession session = request.getSession();
		System.out.println("LogoutController - " + session.getId());
		session.invalidate();

		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/views/loggedOut.jsp");
		rd.forward(request, response);
	}
}
