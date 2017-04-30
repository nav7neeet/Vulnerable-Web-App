package com.acc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/testPhishingDirect")
public class PhishingDirectController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		System.out.println("phishing page..");
		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/views/gmailPhishing.jsp");
		rd.forward(request, response);
	}
}
