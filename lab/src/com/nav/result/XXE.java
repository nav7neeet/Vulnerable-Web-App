package com.nav.result;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@WebServlet("/result/xxe")
public class XXE extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		InputStream stream=request.getInputStream();
		String empDetails="";
		try
		{
			DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
			DocumentBuilder builder=factory.newDocumentBuilder();
			
			Document document=builder.parse(stream);
			Element root=document.getDocumentElement();
			System.out.println(root.getNodeName());
			NodeList list=document.getElementsByTagName("employee");
			
			for(int index=0; index<list.getLength(); index++)
			{
				Node node=list.item(index);
				Element element=(Element) node;
				empDetails=empDetails+element.getTextContent()+"<br>";
			}
			request.setAttribute("empDetails", empDetails);
			request.getRequestDispatcher("/result/xxe.jsp").forward(request, response);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
