package com.acc.result;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acc.dao.Database;

@WebServlet("/result/sqlInjection")
public class SQLInjection extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String id=request.getParameter("id");
		String param=request.getParameter("param");
		String context=request.getParameter("context");
		List list = new ArrayList();

		try
		{
			Connection conn = Database.connect();
			ResultSet rs=null;

			if ("unpatched".equals(param))
			{
				String sql = "select * from albums where AlbumId ="+id;
			    Statement stmt  = conn.createStatement();
			    rs    = stmt.executeQuery(sql);
			} 
			else
			{
				String sql = "select * from albums where AlbumId =?";
				PreparedStatement ps;
				ps = conn.prepareStatement(sql);
				ps.setString(1, id);
				rs    = ps.executeQuery();
			}
	       
	        // loop through the result set
	        while (rs.next())
	        {
	        	list.add(rs.getString(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
	        }
		} 
		catch (Exception e)
		{
			request.setAttribute("exception", e);
		}
		
		request.setAttribute("details", list);
		request.setAttribute("context", context);
		request.getRequestDispatcher("/WEB-INF/result/sqlInjection.jsp").forward(
				request, response);
	}
}
