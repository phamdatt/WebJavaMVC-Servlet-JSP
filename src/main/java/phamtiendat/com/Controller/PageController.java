package phamtiendat.com.Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PageController  extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse resp)
			throws ServletException,IOException{
				resp.setContentType("text/html;charset=UTF-8");
			
				
				RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/views/pages/blog.jsp");
				dispatcher.forward(req,resp);
			}

}
