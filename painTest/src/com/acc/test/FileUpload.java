package com.acc.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test/fileUpload")
public class FileUpload extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String patched = request.getParameter("patched");
		request.setAttribute("patched", patched);
		request.getRequestDispatcher("/WEB-INF/test/fileUpload.jsp").forward(request,
				response);
	}
}
