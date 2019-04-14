package com.nav.result;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/upload")
@MultipartConfig
public class FileUpload extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		System.out.println("upload file..");
		
	    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
	    String fileName = getFileName(filePart);
	    
	    OutputStream out = null;
	    InputStream filecontent = null;
	    
	    try 
	    {
	        out = new FileOutputStream(new File("C:\\Users\\ADCGF8T\\Desktop\\" + fileName));
	        filecontent = filePart.getInputStream();

	        int read = 0;
	        final byte[] bytes = new byte[1024];

	        while ((read = filecontent.read(bytes)) != -1)
	        {
	            out.write(bytes, 0, read);
	        }
	    }
	    catch (FileNotFoundException fne) 
	    {
	        
	    } 
	}
	
	private String getFileName(Part part)
	{
	    final String partHeader = part.getHeader("Content-Disposition");
	    System.out.println("partHeader - " + partHeader);
	    for (String content : part.getHeader("content-disposition").split(";")) 
	    {
	        if (content.trim().startsWith("filename")) {
	            return content.substring(
	                    content.indexOf('=') + 1).trim().replace("\"", "");
	        }
	    }
	    return null;
	}
	@Override
	public void init()
	{
	}
	
	@Override
	public void destroy()
	{
	}
}
