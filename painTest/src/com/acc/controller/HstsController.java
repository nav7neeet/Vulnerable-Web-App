package com.acc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hsts")
public class HstsController extends HttpServlet
{
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
			IOException
	{
		System.out.println("Test HSTS..");

		PrintWriter writer = response.getWriter();
		RequestDispatcher rd = request
				.getRequestDispatcher("/testhsts.jsp");
		rd.forward(request, response);
	}

	public void init()
	{
		System.out.println("servlet initialisation");
	}

	public void destroy()
	{
		System.out.println("destroying servlet");
	}
}
