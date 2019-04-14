package com.acc.controller;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/restricted/home", "/public/home" })
public class HomeController extends HttpServlet
{
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
			IOException
	{
		String remoteAddr = request.getRemoteAddr();

		String username = "";
		Principal principal = request.getUserPrincipal();
		if (principal != null)
		{
			username = principal.getName(); // Find User by j_username.
		}

		System.out.println("HomeController..." + username);
		System.out.println("HomeController..." + remoteAddr);

		// Dude invalidate the session before creating a new session else it
		// will lead session fixation attacks, hehe...got that bro..
		HttpSession session = request.getSession();
		System.out.println("session is new - " + session.isNew());
		session.setAttribute("user", username);
		session.setAttribute("ip", remoteAddr);
		session.setAttribute("creationTime", session.getCreationTime());

		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/views/home.jsp");
		rd.forward(request, response);
	}
}
