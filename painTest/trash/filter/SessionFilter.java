package com.acc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionFilter implements Filter
{
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException
	{
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession();

		boolean sessionNotHijacked = checkSessionHijack(session, request);

		if (sessionNotHijacked)
		{
			chain.doFilter(request, response);
		}
		else
		{
			request.setAttribute("errorMessage",
					"Session Hijack Attempted");
			RequestDispatcher rd = request
					.getRequestDispatcher("/WEB-INF/views/login.jsp");
			rd.forward(request, response);
		}
	}

	public boolean checkSessionHijack(HttpSession session,
			HttpServletRequest request)
	{

		boolean sessionNotHijacked = true;
		System.out.println("checkSessionHijack() - prev request ip - "
				+ session.getAttribute("ip"));
		System.out.println("checkSessionHijack() - current request ip - "
				+ request.getRemoteAddr());

		if (!session.getAttribute("ip").equals(request.getRemoteAddr()))
		{
			sessionNotHijacked = false;
		}
		return sessionNotHijacked;
	}

	public void destroy()
	{
	}

	public void init(FilterConfig arg0) throws ServletException
	{
	}
}
