package com.acc.result;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/result/bankPortal")
public class BankPortal extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		if ("patched".equals(request.getParameter("param")))
			request.getRequestDispatcher("/WEB-INF/test/transferFunds2.jsp").forward(request,
				response);
		else
			request.getRequestDispatcher("/WEB-INF/test/transferFunds1.jsp").forward(request,
					response);
	}
}
