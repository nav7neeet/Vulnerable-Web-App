package com.acc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.scribe.builder.ServiceBuilder;
import org.scribe.builder.api.GoogleApi;
import org.scribe.oauth.OAuth10aServiceImpl;

@WebServlet("/googleplus")
public class Test extends HttpServlet
{
	private static final String CLIENT_ID = "299469286864-ecjotn9dteehv4ieoi9c9srhiaaf63bf.apps.googleusercontent.com";
	private static final String CLIENT_SECRET = "IMWiaXSrFxhJDGwX2YPGXlbQ";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		System.out.println("testing 0auth");
		ServiceBuilder builder = new ServiceBuilder();
		
		OAuth10aServiceImpl service = (OAuth10aServiceImpl) builder
				.provider(GoogleApi.class)
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback("http://localhost:8080/mywebapp/oauth2callback&quot;")
				.scope("openid profile email "
						+ "https://www.googleapis.com/auth/plus.login "
						+ "https://www.googleapis.com/auth/plus.me").debug().build(); // Now
																						// build
		HttpSession sess = request.getSession();
		sess.setAttribute("oauth2Service", service);
		response.sendRedirect(service.getAuthorizationUrl(null));																			// the
		// call
	}
	
	@Override
	public void init()
	{
		System.out.println("servlet initialisation");
	}
	
	@Override
	public void destroy()
	{
		System.out.println("destroying servlet");
	}
}
