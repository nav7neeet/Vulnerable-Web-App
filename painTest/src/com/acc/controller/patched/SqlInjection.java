package com.acc.controller.patched;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acc.dao.FetchDetailsPatched;

@WebServlet("/restricted/patched/sql")
public class SqlInjection extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input - " + input);
		
		List list;
		String recordFound = "true";
		try
		{
			list = new FetchDetailsPatched().displayDetails(input);
			if (list.isEmpty())
			{
				recordFound = "false";
			}
			
			request.setAttribute("recordFound", recordFound);
			request.setAttribute("details", list);
			request.getRequestDispatcher("/WEB-INF/result/sqlResult.jsp").forward(
					request, response);
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
	}
}